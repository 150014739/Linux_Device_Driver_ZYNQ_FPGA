/*  myip.c - The simplest kernel module.

* Copyright (C) 2013 - 2016 Xilinx, Inc
*
*   This program is free software; you can redistribute it and/or modify
*   it under the terms of the GNU General Public License as published by
*   the Free Software Foundation; either version 2 of the License, or
*   (at your option) any later version.

*   This program is distributed in the hope that it will be useful,
*   but WITHOUT ANY WARRANTY; without even the implied warranty of
*   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
*   GNU General Public License for more details.
*
*   You should have received a copy of the GNU General Public License along
*   with this program. If not, see <http://www.gnu.org/licenses/>.

*/
#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/module.h>
#include <linux/slab.h>
#include <linux/io.h>
#include <linux/interrupt.h>

#include <linux/of_address.h>
#include <linux/of_device.h>
#include <linux/of_platform.h>
#include <linux/string.h>


//Added by custom;
#define SUCCESS 0
#define DEVICE_NAME "/dev/myip"

#define DEBUG

#define MYIP_CTRL_REG 0xa0000000
static void *mmio;
static int major_num;

/*
* Is the device open right now? Used to prevent
* concurent access into the same device
*/
static int Device_Open = 0;

/*
* This is called whenever a process attempts to open the device file
*/
static int device_open(struct inode *inode, struct file *file)
{
	#ifdef DEBUG
		printk("Xi: device_open(%p)\n", file);
	#endif
	/*
	* We don't want to talk to two processes at the same time
	*/
	if (Device_Open)
		return -EBUSY;
	Device_Open++;
	/*
	* Initialize the message
	*/
//	Message_Ptr = Message;
	try_module_get(THIS_MODULE);
	return SUCCESS;
}

static int device_release(struct inode *inode, struct file *file)
{
	#ifdef DEBUG
		printk("Xi: device_release(%p,%p)\n", inode, file);
	#endif
	/*
	* We're now ready for our next caller
	*/
	Device_Open--;
	module_put(THIS_MODULE);
	return SUCCESS;
}

/*
* This function is called whenever a process which has already opened the
* device file attempts to read from it.
*/
static ssize_t device_read(struct file *file, /* see include/linux/fs.h */
			char __user * buffer, /* buffer to be filled with data */
			size_t length, /* length of the buffer */
			loff_t * offset)
{
	printk("Info: device_read %d\n", length);

	if (length != 8)
	{
		printk("Error: buffer length should be 8, but currently it is %d", length);
		return EAGAIN;
	}

	//*buffer now contains register index and value;
	//The first 4 char is register index; The latter 4 char is register value;
	unsigned int regIndex;
	unsigned int regValue;
	memcpy(&regIndex, &buffer[0], 4);

	//Copy data from local buffer to outside buffer;
	int len = (int)(sizeof(unsigned int));
	regValue = *(unsigned int *)(mmio + regIndex*len);

	printk("Info: regIndex %d, regValue %d.\n", regIndex, regValue);

	//Copy register value to buffer;
	memcpy(&buffer[4], &regValue, 4);

	return SUCCESS;
}

/*
* This function is called when somebody tries to
* write into our device file.
*/
static ssize_t device_write(struct file *file,
			const char __user * buffer, 
			size_t length, 
			loff_t * offset)
{	

	printk("Info: device_write %d\n", length);

	if (length != 8)
	{
		printk("Error: buffer length should be 8, but currently it is %d", length);
		return EAGAIN;
	}

	//*buffer now contains register index and value;
	//The first 4 char is register index; The latter 4 char is register value;
	unsigned int regIndex;
	unsigned int regValue;

	memcpy(&regIndex, &buffer[0], 4);
	memcpy(&regValue, &buffer[4], 4);

	printk("Info: regIndex %d, regValue %d.\n", regIndex, regValue);

	int len = (int)(sizeof(unsigned int));
	*(unsigned int *)(mmio + regIndex*len) = regValue;
	return SUCCESS;
}


/* Module Declarations */
/*
* This structure will hold the functions to be called
* when a process does something to the device we
* created. Since a pointer to this structure is kept in
* the devices table, it can't be local to
* init_module. NULL is for unimplemented functions.
*/
struct file_operations Fops = {
				.owner = THIS_MODULE,       
				.read = device_read,
				.write = device_write,
				.open = device_open,
				.release = device_release, /*close */								
							};


/* Standard module information, edit as appropriate */
MODULE_LICENSE("GPL");
MODULE_AUTHOR
    ("Xilinx Inc.");
MODULE_DESCRIPTION
    ("myip - loadable module template generated by petalinux-create -t modules");

#define DRIVER_NAME "myip"

/* Simple example of how to receive command line parameters to your module.
   Delete if you don't need them */
unsigned myint = 0xdeadbeef;
char *mystr = "default";

module_param(myint, int, S_IRUGO);
module_param(mystr, charp, S_IRUGO);

struct myip_local {
	int irq;
	unsigned long mem_start;
	unsigned long mem_end;
	void __iomem *base_addr;
};

static irqreturn_t myip_irq(int irq, void *lp)
{
	printk("myip interrupt\n");
	return IRQ_HANDLED;
}

static int myip_probe(struct platform_device *pdev)
{
	struct resource *r_irq; /* Interrupt resources */
	struct resource *r_mem; /* IO mem resources */
	struct device *dev = &pdev->dev;
	struct myip_local *lp = NULL;

	int rc = 0;
	dev_info(dev, "Device Tree Probing\n");
	/* Get iospace for the device */
	r_mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
	if (!r_mem) {
		dev_err(dev, "invalid address\n");
		return -ENODEV;
	}
	lp = (struct myip_local *) kmalloc(sizeof(struct myip_local), GFP_KERNEL);
	if (!lp) {
		dev_err(dev, "Cound not allocate myip device\n");
		return -ENOMEM;
	}
	dev_set_drvdata(dev, lp);
	lp->mem_start = r_mem->start;
	lp->mem_end = r_mem->end;

	if (!request_mem_region(lp->mem_start,
				lp->mem_end - lp->mem_start + 1,
				DRIVER_NAME)) {
		dev_err(dev, "Xi: Couldn't lock memory region at %p\n",
			(void *)lp->mem_start);
		rc = -EBUSY;
		goto error1;
	}

	lp->base_addr = ioremap(lp->mem_start, lp->mem_end - lp->mem_start + 1);
	if (!lp->base_addr) {
		dev_err(dev, "Xi: myip: Could not allocate iomem\n");
		rc = -EIO;
		goto error2;
	}

	/* Get IRQ for the device */
	r_irq = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
	if (!r_irq) {
		dev_info(dev, "Xi: no IRQ found\n");
		dev_info(dev, "Xi: myip at 0x%08x mapped to 0x%08x\n",
			(unsigned int __force)lp->mem_start,
			(unsigned int __force)lp->base_addr);
		return 0;
	}
	lp->irq = r_irq->start;
	rc = request_irq(lp->irq, &myip_irq, 0, DRIVER_NAME, lp);
	if (rc) {
		dev_err(dev, "Xi: testmodule: Could not allocate interrupt %d.\n",
			lp->irq);
		goto error3;
	}

	dev_info(dev,"Xi: myip at 0x%08x mapped to 0x%08x, irq=%d\n",
		(unsigned int __force)lp->mem_start,
		(unsigned int __force)lp->base_addr,
		lp->irq);
	return 0;
error3:
	free_irq(lp->irq, lp);
error2:
	release_mem_region(lp->mem_start, lp->mem_end - lp->mem_start + 1);
error1:
	kfree(lp);
	dev_set_drvdata(dev, NULL);
	return rc;
}

static int myip_remove(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct myip_local *lp = dev_get_drvdata(dev);
	free_irq(lp->irq, lp);
	iounmap(lp->base_addr);
	release_mem_region(lp->mem_start, lp->mem_end - lp->mem_start + 1);
	kfree(lp);
	dev_set_drvdata(dev, NULL);
	return 0;
}

#ifdef CONFIG_OF
static struct of_device_id myip_of_match[] = {
	{ .compatible = "xlnx,myip-1.0", },
	{ /* end of list */ },
};
MODULE_DEVICE_TABLE(of, myip_of_match);
#else
# define myip_of_match
#endif


static struct platform_driver myip_driver = {
	.driver = {
		.name = DRIVER_NAME,
		.owner = THIS_MODULE,
		.of_match_table	= myip_of_match,
	},
	.probe		= myip_probe,
	.remove		= myip_remove,
};

static int __init myip_init(void)
{
	printk("<1>Xi: Hello module world.\n");
	printk("<1>Xi: Module parameters were (0x%08x) and \"%s\"\n", myint,
	       mystr);

	/*
	* Register the character device (atleast try)
	*/
	major_num = register_chrdev(0,DEVICE_NAME, &Fops);

	/*
	* Negative values signify an error
	*/
	if (major_num < 0) 
	{
		printk(KERN_ALERT "%s failed with \n","Sorry, registering the character device ");
	}
	
	int len = (int)(sizeof(unsigned int));
	printk("Xi: myip_init, size of int is: %d\n", len);

	mmio = ioremap(MYIP_CTRL_REG,0x1000);
        
    printk("%s: Registers mapped to mmio = 0x%x  \n",__FUNCTION__,mmio);

    printk("%s the major device number is %d.\n","Registeration is a success", major_num);
	printk("If you want to talk to the device driver,\n");
	printk("create a device file by following command. \n \n");
	printk("mknod %s c %d 0\n\n", DEVICE_NAME, major_num);
	printk("The device file name is important, because\n");
	printk("the ioctl program assumes that's the file you'll use\n");

	return platform_driver_register(&myip_driver);
}


static void __exit myip_exit(void)
{
	unregister_chrdev(major_num,DEVICE_NAME);
	platform_driver_unregister(&myip_driver);
	printk(KERN_ALERT "Xi: Goodbye module world.\n");
}

module_init(myip_init);
module_exit(myip_exit);
