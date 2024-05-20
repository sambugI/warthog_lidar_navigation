Este proyecto se realizó en ROS Noetic. En el repositorio se incluyen todos los paquetes que se requirieron para hacer el proyecto.
- Comando para lanzar mundo warthog:roslaunch warthog_gazebo warthog_world.launch
- Comando visualizar modelo robot warthog y controlarlo: roslaunch warthog_viz view_robot.launch (se visualizara una flechas en el eje central del robot y una circunferencia alrededor para poder controlarlo manualmente).
- Comando visualizar velocidad de warthog: rostopic echo /husky_velocity_controller/cmd_vel
- Comando visualizar modelo personalizado del robot: lanzar comando export WARTHOG_URDF_EXTRAS=$HOME/ros101/src/warthog_personalizado/urdf/LIDAR.urdf.xacro 
(modificar dirección específica en donde se encuentra el repositorio en el computador) y luego en la misma terminal, roslaunch warthog_viz view_model.launch use_gui:=true
- Comando escanear ambiente simulado: rosrun gmapping slam_gmapping scan:=scan
- Comando guardar mapa creado con LIDAR: rosrun map_server map_saver -f /home/samuel/ros101/src/warthog_personalizado/maps (modificar dirección a carpeta en que se quiera guardar el mapa).
Comando para lanzar navegación warthog: roslaunch warthog_personalizado navigation.launch

Para realizar el escaneo del ambiente, se debe lanzar mundo warthog en una terminal, luego lanzar el modelo personalizado del robot en rviz en otra terminal y finalmente lanzar gmapping. Se controla por medio de rviz el movimiento del robot manualmente.
Después, se guardó el mapa  con map-saver.
Para realizar la navegación warthog solo es necesario hacer el export del modelo del warthog y lanzar el comando de navegación roslaunch warthog_personalizado navigation.launch. Para indicar lugar al que se quiere llevar al robot, se debe usar flecha 2D nav goal de rviz.
