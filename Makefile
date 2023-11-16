obj-m += dev_nr.o
RESULT = major_num_example
SRC = $(RESULT).c
KDIR = ~/working/Raspbian/kernel
CCC = arm-linux-gnueabihf-gcc
all:
	make -C $(KDIR) M=$(PWD) modules
	$(CCC) -o $(RESULT) $(SRC)

clean:
	make -C $(KDIR) M=$(PWD) clean
	rm -f $(RESULT)

