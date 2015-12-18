obj-m += sys_submitjob.o
sys_submitjob-objs := submitjob.o common_func.o encryption.o checksum.o concat.o compression.o

all: user sys_submitjob
user: xhw3.c xhw3.h
	gcc -Wall -Werror xhw3.c -o xhw3 -lcrypto -pthread

sys_submitjob:
	make -Wall -Werror -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
	rm -f xhw3
	rm log.txt
