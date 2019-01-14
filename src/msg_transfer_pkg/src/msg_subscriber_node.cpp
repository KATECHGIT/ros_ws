#include "ros/ros.h" // ROS 기본 헤더파일
#include "std_msgs/Int32.h" // std_msgs 메시지 파일헤더
// 메시지 콜백함수로써, 밑에서 설정한 ros_sub 구독자에 해당되는 메시지를
// 수신하였을때 동작하는 함수이다
void msgCallback(const std_msgs::Int32& msg)
{
    ROS_INFO("recieve msg: %d", msg.data); // 수신된 메시지를 표시하는 함수
}

int main(int argc, char **argv)
// 노드 메인 함수
{
    ros::init(argc, argv, "msg_subscriber_node"); // 노드명 초기화
    ros::NodeHandle nh;
    // 노드 핸들 선언
    // 구독자 ros_sub 를 작성한다. 토픽명은 "ros_test_msg" 이며,
    // 구독자 큐(queue) 사이즈를 10개로 설정한다는 것이다
    ros::Subscriber ros_sub = nh.subscribe("ros_test_msg", 10, msgCallback);
    // 콜백함수 호출을 위한 함수로써, 메시지가 수신되기를 대기, 수신되었을 경우 콜백함수를 실행한다
    ros::spin();
    return 0;
}