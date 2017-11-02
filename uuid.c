#include <stdio.h>
#include <uuid/uuid.h>

int main()
{
	uuid_t uuid;
	char str[36];
	uuid_generate(uuid);
	uuid_unparse(uuid,str);
	printf("%s\n",str);


	int i;
	for(i=0;i<=18;i++)
		printf("%2X",uuid[i]);
	printf("\n");

	return 0;
}
