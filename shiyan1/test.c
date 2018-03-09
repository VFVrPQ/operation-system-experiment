#include "stdio.h"

int f(int a,int b){
    int c;
    c=a+b;
    return c;
}

int main(){
    int i,j,k;
    i=1;j=2;
    k=f(i,j);
    printf("%d+%d=%d\n",i,j,k);
    return 0;
}
