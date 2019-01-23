
int main()
{
int a[10],i;
for(i=0;i<10;i++)
{
a[i]=i;
}
int temp;
temp=a[2];
a[2]=a[6];
a[6]=temp;
}
