# Navegación con LIDAR Warthog

Este proyecto se realizó en ROS Noetic. Se deben isntalar los siguientes paquetes:

- https://github.com/warthog-cpr/warthog.git.
- https://github.com/warthog-cpr/warthog_simulator.git
- https://github.com/warthog-cpr/warthog_desktop.git
- https://github.com/ros-perception/slam_gmapping.git
- https://github.com/ros-simulation/gazebo_ros_pkgs.git
- https://github.com/clearpathrobotics/cpr_gazebo.git

Dentro del paquete warthog, debe abrir la carpeta warthog description, luego urdf y finalmente abrir warthog.urdf.xacro. Debe ir a las últimas líneas del programa, en la línea después de Optional standard accessories y poner lo siguiente:
```
<xacro:include filename="$(find warthog_description)/urdf/accessories.urdf.xacro" />
```
Después de Optional custom includes, debe colocar la siguiente línea:
```
<xacro:include filename="$(optenv WARTHOG_URDF_EXTRAS LIDAR.urdf)" />
```
Después de esto, se puede usar el paquete con normalidad. A continuación, se incluyen los principales comandos del proyecto:
- Lanzar mundo warthog:
```
roslaunch warthog_gazebo warthog_world.launch
```
- Visualizar modelo robot warthog y controlarlo:
```
roslaunch warthog_viz view_robot.launch
```
En rviz se mostrarán una flechas en el eje central del robot (para avanzar y retroceder el robot) y una circunferencia alrededor (para la rotación del robot) para poder controlarlo manualmente. Se debe tomar con el mouse estos elementos y luego arrastrarlo para moverlo en la dirección deseada.
- Visualizar velocidad de warthog:
```
rostopic echo /husky_velocity_controller/cmd_vel
```
- Visualizar modelo personalizado del robot: lanzar comando export
```
WARTHOG_URDF_EXTRAS=$HOME/ros101/src/warthog_personalizado/urdf/LIDAR.urdf.xacro
```
Se sugiere modificar dirección específica en donde se encuentra el repositorio en el computador. Luego en la misma terminal se debe lanzar:
```
roslaunch warthog_viz view_model.launch use_gui:=true
```
Si no funciona, se sugiere lanzar rviz normal de warthog.
- Escanear ambiente simulado:
```
rosrun gmapping slam_gmapping scan:=scan
```
- Guardar mapa creado con LIDAR:
```
rosrun map_server map_saver -f /home/samuel/ros101/src/warthog_personalizado/maps
```
Se sugiere modificar dirección a carpeta en que se quiera guardar el mapa.
- Lanzar navegación warthog:
```
roslaunch warthog_personalizado navigation.launch
```
## Navegación en mundo real o en otro ambiente:
Para lanzar la navegación, se incluyo dentro del archivo navigation.launch la siguiente línea de código:
```
<include file="$(find warthog_gazebo)/launch/warthog_world.launch" />
```
Esto es debido a que dentro de warthog_world.launch, también se lanza el archivo spawn_warthog.launch, el cual activa los nodos de control y de teleoperación del warthog. Se incluyo el  warthog_world.launch en lugar de estos 2 últimos, para así poder lanzar tanto el simulador como la navegación de manera más simple. Se recomienda cambiar el "include" de navigation.launch considerando la información anterior si se desea probar en ambiente real o en otro ambiente simulado. 
## Escaneo del ambiente con warthog
Para poder navegar de manera autónoma por el ambiente, primero se debe realizar el escaneo del ambiente en el cual se va a usar. Para esto, se debe lanzar mundo warthog en una terminal, luego lanzar el modelo personalizado del robot en rviz en otra terminal y finalmente lanzar gmapping. Se controla por medio de rviz el movimiento del robot manualmente. Después, se guarda el mapa con el comando map-saver.

## Uso de navegación warthog
Para realizar la navegación warthog solo es necesario hacer el export del modelo del warthog y lanzar el comando de navegación roslaunch warthog_personalizado navigation.launch. 

Para indicar lugar al que se quiere llevar al robot, se debe usar flecha 2D nav goal de rviz.

## Referencias
El principal paquete usado para crear la navegación del robot corresponde a: https://github.com/ai-winter/ros_motion_planning. Se recomienda leer instructivo del paquete para tener una mayor comprensión de cómo poder sacar el máximo potencial a los distintos métodos de navegación que se pueden usar en warthog. 

Para investigar a mayor profundidad el funcionamiento de los paquetes usados para realizar este proyecto, se sugiere la lectura de las siguientes referencias:
- https://www.clearpathrobotics.com/assets/guides/noetic/warthog/Simulating.html
- https://www.clearpathrobotics.com/assets/guides/noetic/warthog/AdditionalSimulation.html#customizepayload
- https://classic.gazebosim.org/tutorials?tut=ros_gzplugins#Tutorial:UsingGazebopluginswithROS
- https://wiki.ros.org/hokuyo_node
