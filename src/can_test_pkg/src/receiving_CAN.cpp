#include <canlib.h>
#include <stdio.h>
#include <signal.h>
#include <errno.h>
#include <unistd.h>
#include <time.h>
#include <ros/ros.h>
#include "can_test_pkg/CANPacket.h"

int i = 0;
unsigned char willExit = 0;
int last;
time_t last_time = 0;


void sighand (int sig)
{
  switch (sig) {
  case SIGINT:
    willExit = 1;
    alarm(0);
    break;
  }
}

 
int main (int argc, char *argv[])

{
  canHandle h;
  int ret = -1;
  long id; 
  unsigned char msg[8];
  unsigned int dlc;
  unsigned int flag;
  unsigned long t;
  //int channel = 0;
  int channel = 1;
  
  int bitrate = BAUD_500K;
  int j;
	can_test_pkg::CANPacket candat;

  ros::init(argc, argv, "receiving_CAN");
  ros::NodeHandle n;
 
  ros::Publisher can_pub = n.advertise<can_test_pkg::CANPacket>("can_raw", 10);



  /* Use sighand as our signal handler */
  signal(SIGALRM, sighand);
  signal(SIGINT, sighand);
  alarm(1);

  /* Allow signals to interrupt syscalls(in canReadBlock) */
  siginterrupt(SIGINT, 1);
  
  /* Open channels, parameters and go on bus */
  h = canOpenChannel(channel, canOPEN_EXCLUSIVE | canOPEN_REQUIRE_EXTENDED);
  if (h < 0) {
    printf("canOpenChannel %d failed\n", channel);
    return -1;
  }
    
  canSetBusParams(h, bitrate, 4, 3, 1, 1, 0);
  canSetBusOutputControl(h, canDRIVER_NORMAL);
  canBusOn(h);

  i = 0;
  //  while (!willExit) {
  while(ros::ok()){ 
    do { 
      ret = canReadWait(h, &id, &msg, &dlc, &flag, &t, -1);
      switch (ret) {
      case 0:
        printf("(%d) id:%ld dlc:%d data: ", i, id, dlc);
        if (dlc > 8) {
          dlc = 8;
        }
        for (j = 0; j < dlc; j++){
          printf("%2.2x ", msg[j]);
	  candat.dat[j]=msg[j];
	}
        printf(" flags:0x%x time:%ld\n", flag, t);
	candat.count =i;
	candat.time=t;
	candat.id = id;
	candat.len=dlc;
	candat.header.stamp=ros::Time::now();
	can_pub.publish(candat);
	ros::spinOnce();
	i++;
	if (last_time == 0) {
	  last_time = time(0);
	} else if (time(0) > last_time) {
	  last_time = time(0);
	  if (i != last) {
	    printf("rx : %d total: %d\n", i - last, i);
	  }
	  last = i;
	}
        break;
      case canERR_NOMSG:
        break;
      default:
        perror("canReadBlock error");
        break;
      }
    } while (ret == canOK);
    willExit = 1;
  }
   
  canClose(h);
   
  sighand(SIGALRM);
  printf("Ready\n");

  return 0;
}




