#include "ros/ros.h" // ROS 기본 헤더파일
#include "std_msgs/Int32.h" // std_msgs 메시지 파일헤더

int main(int argc, char **argv)
// 노드 메인 함수
{
    ros::init(argc, argv, "msg_publisher_node"); // 노드명 초기화
    ros::NodeHandle nh; // 노드 핸들 선언
    // 발행자 선언
    // 발행자 ros_pub 를 작성한다. 토픽명은 "ros_test_msg" 이며,
    // 발행자 큐(queue) 사이즈를 100개로 설정한다는 것이다
    ros::Publisher ros_pub = nh.advertise<std_msgs::Int32>("ros_test_msg", 100);
    // 루프 주기를 설정한다. "10" 이라는 것은 10Hz를 말하는 것으로 0.1초 간격으로 반복된다
    ros::Rate loop_rate(10);
    int count = 0;
    // 메시지에 사용될 변수 선언
    while (ros::ok())
    {
        std_msgs::Int32 msg; // std_msgs 형식으로 msg 메시지를 선언
        msg.data = count;
        // count 변수를 이용하여 메시지 값을 정한다
        ROS_INFO("send msg = %d", count); // ROS_INFO 함수를 이용하여 count 변수 표시
        ros_pub.publish(msg);
        loop_rate.sleep();
        ++count;
        // 메시지를 발행한다. 약 0.1초 간격으로 발행된다
        // 위에서 정한 루프 주기에 따라 슬립에 들어간다
        // count 변수 1씩 증가
    }
    return 0;
}