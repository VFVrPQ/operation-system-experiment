
A.o:     file format elf32-i386


Disassembly of section .text:

00000000 <f>:
#include "stdio.h"

int f(int a,int b){
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 10             	sub    $0x10,%esp
    int c;
    c=a+b;
   6:	8b 45 0c             	mov    0xc(%ebp),%eax
   9:	8b 55 08             	mov    0x8(%ebp),%edx
   c:	01 d0                	add    %edx,%eax
   e:	89 45 fc             	mov    %eax,-0x4(%ebp)
    return c;
  11:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
  14:	c9                   	leave  
  15:	c3                   	ret    

00000016 <main>:

int main(){
  16:	55                   	push   %ebp
  17:	89 e5                	mov    %esp,%ebp
  19:	83 e4 f0             	and    $0xfffffff0,%esp
  1c:	83 ec 20             	sub    $0x20,%esp
    int i,j,k;
    i=1;j=2;
  1f:	c7 44 24 14 01 00 00 	movl   $0x1,0x14(%esp)
  26:	00 
  27:	c7 44 24 18 02 00 00 	movl   $0x2,0x18(%esp)
  2e:	00 
    k=f(i,j);
  2f:	8b 44 24 18          	mov    0x18(%esp),%eax
  33:	89 44 24 04          	mov    %eax,0x4(%esp)
  37:	8b 44 24 14          	mov    0x14(%esp),%eax
  3b:	89 04 24             	mov    %eax,(%esp)
  3e:	e8 fc ff ff ff       	call   3f <main+0x29>
  43:	89 44 24 1c          	mov    %eax,0x1c(%esp)
    printf("%d+%d=%d\n",i,j,k);
  47:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  4b:	89 44 24 0c          	mov    %eax,0xc(%esp)
  4f:	8b 44 24 18          	mov    0x18(%esp),%eax
  53:	89 44 24 08          	mov    %eax,0x8(%esp)
  57:	8b 44 24 14          	mov    0x14(%esp),%eax
  5b:	89 44 24 04          	mov    %eax,0x4(%esp)
  5f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  66:	e8 fc ff ff ff       	call   67 <main+0x51>
    return 0;
  6b:	b8 00 00 00 00       	mov    $0x0,%eax
}
  70:	c9                   	leave  
  71:	c3                   	ret    
