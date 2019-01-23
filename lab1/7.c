int main()
{
int a=3,b=4;
int *p=&a;
int *q=&b;
int temp;
temp=*p;
*p=*q;
*q=temp;

}

