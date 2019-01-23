
int main()
{
	int a[6]={5,2,4,1,3,6};
	int max=a[0],min=a[0],i;
	for(i=0;i<6;i++)
	{
		if(max<a[i])
		{
			max=a[i];
		}
		if(min>a[i])
		{
			min=a[i];
		}

	}

}
