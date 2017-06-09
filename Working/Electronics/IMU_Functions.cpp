/******************************************************************************
* IMU_Functions.cpp
*
* Runs initialization and reads files on the BNO055 IMU
******************************************************************************/
#include "Mapper.h"


/******************************************************************************
 * void start_read_imu
 *
 * Starts read_imu.py code
******************************************************************************/
void start_read_imu(void)
{
  char cmd[50];
  strcpy(cmd,"python read_imu.py &; exit");
  system(cmd);
  printf("%s\n", "Started IMU using system(cmd)");

  // clear fifo file //
  //std::FILE* fifo = fopen("imu.fifo","w");
  std::FILE* fd = fopen("imu.txt","w");
  fclose(fd);
  printf("Cleared fifo file\n");

  // Wait 2 seconds to let the python script start up
  usleep(2000000);

  // Check whether the python script wrote anything
  fd = fopen("imu.fifo","r");
  printf("Python \n");
  
  // Insert check here //
  fseek(fd, 0, SEEK_END); // goto end of file
  if (ftell(fd) == 0)
  {
    printf("file is empty\n");
  }
  else
  {
    printf("file is not empty\n");
  }
  fseek(fd, 0, SEEK_SET); // go to begin of file

  // if it isn't printing values, restart initialization

  fclose(fd);
//*/
  return;
}

/******************************************************************************
 * imu_t read_imu_fifo
 *
 * Reads IMU values from imu.fifo and write to the imu struct
******************************************************************************/
imu_t read_imu_fifo(void)
{
	imu_t imu;
	char buf[1000];
	FILE *fd = fopen( "imu.fifo", "r");
	fgets(buf,1000,fd);
	fclose(fd);
	sscanf(buf,"%f %f %f %f %f %f %i %i %i %i %f %f %f",
				 &imu.yaw,&imu.roll,&imu.pitch,
				 &imu.q, &imu.p, &imu.r,
				 &imu.sys,&imu.gyro,&imu.accel,
				 &imu.mag,imu.x_acc,&imu.y_acc,&imu.z_acc);

	return imu;
}
