#include <ros/ros.h>
#include "can_test_pkg/CANPacket.h"
#include "can_test_pkg/KatechSonata.h"

static ros::Publisher pub;

void chatterCallback(const can_test_pkg::CANPacket::ConstPtr& msg)
{
  unsigned short w;
  // static int enc_sum;
  static int velocity;

  can_test_pkg::KatechSonata sonata_data;

  int changed=0;

  //if(msg->id==514){ // 0x202
  if(msg->id==258){ // 0x102
    velocity = msg->dat[2];
    changed = 1;

    printf("received msg_velo: %d \n", velocity);

    sonata_data.velocity = velocity;
    pub.publish(sonata_data);
  }

  // printf("%d \n", velocity);
}


int main (int argc, char *argv[]){
  
  // autoware_msgs::CANPacket candat;

  ros::init(argc, argv, "converting_CAN");
  ros::NodeHandle n;


  pub = n.advertise<can_test_pkg::KatechSonata>("sonata_velocity", 10); // sonata velocity

  ros::Subscriber sub = n.subscribe("can_raw", 100, chatterCallback);

  ros::spin();
}