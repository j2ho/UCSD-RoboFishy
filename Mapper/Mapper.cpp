/******************************************************************************
*	Main script for the 2017 RoboFishy Scripps AUV
******************************************************************************/

#include "Mapper.h"

/******************************************************************************
* Controller Gains
******************************************************************************/


/******************************************************************************
 * Global Variables
******************************************************************************/

// Holds the latest pressure value from the MS5837 pressure sensor
ms5837_t ms5837;

// Holds the constants and latest errors of the yaw pid controller
pid_data_t yaw_pid;

// Holds the constants and latest errors of the depth pid controller
pid_data_t depth_pid;

// Motor channels
int motor_channels[] = {CHANNEL_1, CHANNEL_2, CHANNEL_3};

// Holds the latest temperature value from the temperature temperature sensor
float batt_temp;

// setmotor intialization
float portmotorspeed = 0;
float starmotorspeed = 0;

// Start time for stop timer
struct timeval start, now;


/******************************************************************************
* Main Function
******************************************************************************/

int main()
{
	// capture ctrl+c and exit
	signal(SIGINT, ctrl_c);

	// Set up RasPi GPIO pins through wiringPi
	wiringPiSetup();

  // Set laser pin to output
  pinMode(3, OUTPUT);

	// Check if AUV is initialized correctly
	if( initialize_sensors() < 0 )
	{
		return -1;
	}
	printf("\nAll components are initialized\n");
	substate.mode = INITIALIZING;
	substate.laserarmed = ARMED;

	// Initialize Thread locks
	initializeSubImagesLock(&subimages);
	//initializeOdomDataLock();

	printf("Starting Threads\n");
	initializeTAttr();

	// Thread handles
	pthread_t navigationThread;
	pthread_t logThread;
	pthread_t safetyThread;
	//pthread_t disarmlaserThread;
	pthread_t uiThread;
	pthread_t cameraThread;
	pthread_t rangeThread;


	// Create threads using modified attributes
//	pthread_create (&disarmlaserThread, &tattrlow, disarmLaser, NULL);
	pthread_create (&safetyThread, &tattrlow, safety_thread, NULL);
	pthread_create (&logThread, &tattrmed, log_thread, NULL);
	pthread_create (&navigationThread, &tattrmed, navigation_thread, NULL);
	pthread_create (&cameraThread, &tattrhigh, takePictures, NULL);
	pthread_create (&rangeThread, &tattrmed, rangeFinder, NULL);
//	pthread_create (&uiThread, &tattrmed, userInterface, NULL);

  // Destroy the thread attributes
 	destroyTAttr();

  printf("Threads started\n");

  auv_msleep(100);

	// iterate counter
	int iterator = 0;

	// Prompt for run time
	int run_time;
	std::cout << "Number of Seconds to run: ";
	std::cin >> run_time;

	// Start timer!
	gettimeofday(&start, NULL);

	yaw_pid.setpoint = substate.imu.yaw;
  if(yaw_pid.setpoint > 180) yaw_pid.setpoint -= 360;

	// We're ready to run.
  substate.mode = RUNNING;

  // Run main while loop, wait until it's time to stop
	while(substate.mode != STOPPED)
	{
		// Check if we've passed the stop time
		gettimeofday(&now, NULL);
 		if((now.tv_sec - start.tv_sec) > run_time)
 			substate.mode = STOPPED;

    if(substate.mode == RUNNING)
    {
      // Change the setpoint every LEG_TIME seconds
      if((now.tv_sec - start.tv_sec) > LEG_TIME*(iterator+1))
      {
        // Set new setpoint
        yaw_pid.setpoint += DELTA_SETPOINT;
        if(yaw_pid.setpoint > 180) yaw_pid.setpoint -= 360;

        // Increment iterator
        iterator++;
      } // end if difftime

    } // end if RUNNING

		// Sleep a little
		auv_msleep(100);
	}

	// Exit cleanly
	cleanup_auv();

  // Write last two images to file
  imwrite("lastbrightimage.jpg",subimages.brightframe);
  imwrite("lastdarkimage.jpg",subimages.darkframe);

  return 0;
}
