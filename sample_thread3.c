#include<stdio.h>
#include<pthread.h>

void func(int x);
int count = 0;

int main(){
    pthread_t t1;
    pthread_t t2;
    pthread_create(&t1, NULL, (void*)func, (void*)1);
    pthread_create(&t2, NULL, (void*)func, (void*)2);
    printf("main()\n");
    pthread_join(t1, NULL);
    pthread_join(t2, NULL);

    printf("count 0 = %d\n", count);
    return 0;
}

void func(int x){
    int i = 0;
    for (i = 0; i < 1000000000; i ++){
        count ++;
    }
}
