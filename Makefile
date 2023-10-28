obj-m += dev_nr.o
RESULT = major_num_example
SRC = $(RESULT).C

all:
	make -C /home/jjuser/working/kernel M=$(PWD) modules
	aarch64-linux-gnu-gcc -o $(RESULT) $(SRC)

clean:
	make -C $(HOME)/working/kernel M=$(PWD) clean
	rm -f $(RESULT)

