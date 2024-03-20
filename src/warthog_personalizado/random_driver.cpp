#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <stdlib.h>

int main(int argc, char **argv) {
    // Inicializa ROS y configura un nodo
    ros::init(argc, argv, "random_warthog_commands");
    ros::NodeHandle nh;

    // Crea el publicador y le indica que publique
    // en el tema "cmd_vel" con un tamaño de cola de 100
    ros::Publisher pub = nh.advertise<geometry_msgs::Twist>("cmd_vel", 100);

    // Configura el generador de números aleatorios
    srand(time(0));

    // Configura el bucle para publicar a una frecuencia de 10 Hz
    ros::Rate rate(10);

    while (ros::ok()) {
        // Declara el mensaje a ser enviado
        geometry_msgs::Twist msg;

        // Configura valores para que coincidan con el comando rostopic pub
        msg.linear.x = 0.5;
        msg.linear.y = 0.0;
        msg.linear.z = 0.0;

        msg.angular.x = 0.0;
        msg.angular.y = 0.0;
        msg.angular.z = 0.5;

        // Publica el mensaje
        pub.publish(msg);

        // Espera hasta que sea el momento de enviar otro mensaje
        rate.sleep();
    }

    return 0;
}