#include <canlib.h>
#include <stdio.h>
#include <signal.h>
#include <errno.h>
#include <unistd.h>
#include <pthread.h>
#include <iostream>
#include <cmath>

#include "ros/ros.h"

#include "std_msgs/String.h"
#include "std_msgs/Int32.h"

#define ALARM_INTERVAL_IN_S     (1)
#define WRITE_WAIT_INFINITE     (unsigned long)(-1)

static unsigned int msgCounter = 0;
static int willExit = 0;

static void check(char* id, canStatus stat)
{
  if (stat != canOK) {
    char buf[100];
    buf[0] = '\0';
    canGetErrorText(stat, buf, sizeof(buf));
    printf("%s: failed, stat=%d (%s)\n", id, (int)stat, buf);
  }
}

static void sighand(int sig)
{
  static unsigned int last;

  switch (sig) {
  case SIGINT:
    willExit = 1;
    break;
  case SIGALRM:
    if (msgCounter - last) {
      printf("msg/s = %d, total=%u\n",
             (msgCounter - last) / ALARM_INTERVAL_IN_S, msgCounter);
    }
    last = msgCounter;
    alarm(ALARM_INTERVAL_IN_S);
    break;
  }
}


static void* senderCaller(void *unused)
{
  //CAN ---------------------------
  canHandle hnd;
  canStatus stat;

  char msg_velo[8] = "";

  int channel = 0;

  long speed_id = 258; //0x102


  /* Use sighand as our signal handler */
  signal(SIGALRM, sighand);
  signal(SIGINT, sighand);
  alarm(ALARM_INTERVAL_IN_S);

  /* Allow signals to interrupt syscalls */
  siginterrupt(SIGINT, 1);

  canInitializeLibrary();

   /* Open channel, set parameters and go on bus */
	//hnd = canOpenChannel(channel, canOPEN_EXCLUSIVE | canOPEN_REQUIRE_EXTENDED);
  hnd = canOpenChannel(channel, canOPEN_EXCLUSIVE);
  if (hnd < 0) {
    printf("canOpenChannel %d", channel);
  //  check("", hnd);
    return nullptr;
  }
  stat = canSetBusParams(hnd, canBITRATE_500K, 0, 0, 0, 0, 0);
  check("canSetBusParams", stat);
  //   if (stat != canOK) {
  //     goto ErrorExit;
  //   }
  stat = canBusOn(hnd);
  check("canBusOn", stat);
  //   if (stat != canOK) {
  //     goto ErrorExit;
  //   }

  int bin[16] = {0,};

  int check_num = 0;


  // CAN sending ----------------------------
  while ((stat == canOK) && !willExit) {

    if (check_num > 15) {
      check_num = 0;
    }

    msg_velo[2] = check_num * 2;
    msg_velo[7] = check_num;


    // printf("linear_x: %f \n", command_data.linear_x);
    // printf("linear_x: %f \n", command_data.linear_velocity);
    printf("msg_velo[2]: %d \n", msg_velo[2]);
    
    //printf("check_num: %d \n", check_num);

    stat = canWriteWait(hnd, speed_id, msg_velo, sizeof(msg_velo) / sizeof(msg_velo[0]), canMSG_STD, WRITE_WAIT_INFINITE);

    // if (errno == 0) {
    //     check("\ncanWriteWait", stat);
    //   }
    //   else {
    //     perror("\ncanWriteWait error");
    //   }
    if (stat == canOK) {
      msgCounter++;
    }
    
    check_num++;

    usleep(20*1000);
  }

  return nullptr;
}

int main(int argc, char *argv[])
{
	ros::init(argc, argv, "sending_CAN");
	ros::NodeHandle n;


  pthread_t th;
  if(pthread_create(&th, nullptr, senderCaller, nullptr) != 0){
    std::perror("pthread_create");
    std::exit(1);
  }

  if (pthread_detach(th) != 0){
    std::perror("pthread_detach");
    std::exit(1);
  }

	ros::spin();
	return 0;
}