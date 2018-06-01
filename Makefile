all: hello sample_thread1 sample_thread2 sample_thread3 sample_thread4

hello: hello.c
	gcc	-o	hello	hello.c

sample_thread1: sample_thread1.c
	gcc -o sample_thread1 sample_thread1.c -lpthread

sample_thread2:	sample_thread2.c
	gcc -o sample_thread2 sample_thread2.c -lpthread

sample_thread3:	sample_thread3.c
	gcc -o sample_thread3 sample_thread3.c -lpthread

sample_thread4:	sample_thread4.c
	gcc -o sample_thread4 sample_thread4.c -lpthread

clean:
	$(RM) hello sample_thread1 sample_thread2 sample_thread3 sample_thread4
