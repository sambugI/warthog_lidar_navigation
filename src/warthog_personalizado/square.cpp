#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <stdlib.h>

int main(int argc, char **argv) {
    // Inicializa ROS y configura un nodo
    ros::init(argc, argv, "cmd_vel_publisher");
    ros::NodeHandle nh;

    // Crea el publicador y le indica que publique
    // en el tema "cmd_vel" con un tamaño de cola de 10
    ros::Publisher pub = nh.advertise<geometry_msgs::Twist>("cmd_vel", 100);

    // Crea un mensaje de tipo Twist para el movimiento lineal
    geometry_msgs::Twist linear_msg;
    linear_msg.linear.x = 0.5;
    linear_msg.linear.y = 0.0;
    linear_msg.linear.z = 0.0;
    linear_msg.angular.x = 0.0;
    linear_msg.angular.y = 0.0;
    linear_msg.angular.z = 0.0;

    // Crea un mensaje de tipo Twist para el movimiento angular
    geometry_msgs::Twist angular_msg;
    angular_msg.linear.x = 0.0;
    angular_msg.linear.y = 0.0;
    angular_msg.linear.z = 0.0;
    angular_msg.angular.x = 0.0;
    angular_msg.angular.y = 0.0;
    angular_msg.angular.z = 0.5;

    // Configura el bucle para publicar a una frecuencia de 10 Hz
    ros::Rate rate(10);

    ros::Time start_time = ros::Time::now();
    while (ros::ok() && (ros::Time::now() - start_time).toSec() < 15.0) {
        // Publica comandos lineales durante los primeros 30 segundos
        pub.publish(linear_msg);
        rate.sleep();
    }

    // Publica comandos angulares durante los siguientes 5 segundos
    while (ros::ok() && (ros::Time::now() - start_time).toSec() < 20.0) {
        pub.publish(angular_msg);
        rate.sleep();
    }

    return 0;
}

