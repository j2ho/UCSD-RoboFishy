/******************************************************************************
* MS5837.cpp
*
* File to run Initialization and reading files on the MS5837 Pressure Sensor
******************************************************************************/
#include "Mapper.h"

/******************************************************************************
 * void start_read_pressure
 *
 * Starts pressure reading python program
******************************************************************************/

void start_read_pressure(void)
{
  printf("Starting read_pressure.py, then waiting 2 seconds\n");
	char cmd[50];
  strcpy(cmd, "python read_pressure.py & exit");
  system(cmd);
  printf("started read_pressure.py using system('python read_pressure.py & exit')\n");
  usleep(2000000);
	return;
}

/******************************************************************************
 * ms5837_t read_pressure_fifo
 *
 * Reads depth and temp values from pressure.fifo and write to the ms5837 struct
******************************************************************************/
ms5837_t read_pressure_fifo(void)
{
	ms5837_t ms5837;
	char buf[1000];
	FILE *fd = fopen( "pressure.fifo", "r");
	fgets(buf, 1000, fd);
	fclose(fd);
	sscanf(buf, "%f %f", &ms5837.depth, &ms5837.water_temp);
	return ms5837;
}
