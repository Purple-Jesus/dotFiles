#include <stdio.h>

typedef struct
{
	int data1;
	int data2;
} Data1_ts;

typedef struct
{
	int 		data1;
	int 		data2;
	char 		data3;
	Data1_ts	*data4;
} Data_ts;

int something(Data_ts *data_ps);

int main()
{
	int err = -1;
	Data1_ts data1_s = { .data1 = 10, .data2 = 11 };
	Data1_ts *data1_ps;
	data1_ps = &data1_s;
	Data_ts data_s[4] = {
		[1] = { .data1 = 3, .data2 = 4, .data3 = 'b', .data4 = data1_ps},
		[2] = { .data1 = 5, .data2 = 6, .data3 = 'c', .data4 = &data1_s},
	};

	err = something(data_s);
	
	return err;
}

int something(Data_ts *data_ps)
{
	printf("0: Data1: %d, Data2: %d, Data3: %c, Data4.1: %d, Data4.2: %d\n", data_ps[2].data1, data_ps[2].data2, data_ps[2].data3, data_ps[2].data4->data1, (*data_ps[2].data4).data2);
	printf("0: Data1: %d, Data1: %d, Data3: %c, Data4.1: %d, Data4.1: %d\n", data_ps[1].data1, data_ps[1].data2, data_ps[1].data3, data_ps[1].data4->data1, (*data_ps[1].data4).data2);

	return 0;
}
