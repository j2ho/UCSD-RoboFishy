/******************************************************************************
* Temperature_Sensor_Functions.cpp
*
* Runs initialization and reads files on the DS18B20 temperature sensor
******************************************************************************/
#include "Mapper.h"

/***************************************************************************
 * void start_Py_ds18b20(void)
 *
 * Writes temperature values from the DS18B20 temperature sensor into
 * ds18b20_fifo.fifo
***************************************************************************/
void start_Py_ds18b20(void)
{
    std::FILE* fd = fopen("temperature_sensor.py", "r");
	PyRun_SimpleFile(fd,"temperature_sensor.py");
	return;
}

/***************************************************************************
 * ds18b20_t ds18b20_read(void)
 *
 * Reads temperature values from ds18b20_fifo.fifo
***************************************************************************/
ds18b20_t ds18b20_read(void)
{
	// Create struct to hold temperature data
	ds18b20_t ds18b20;

	// Read temperature values from ds18b20_fifo.fifo
	char buf[1000];
    std::FILE *fd = fopen( "ds18b20_fifo.fifo", "r");
	fgets(buf,1000,fd);
	fclose(fd);
	sscanf(buf,"%f",&ds18b20.temperature);

	// Return a temperature value
	return ds18b20;
}
