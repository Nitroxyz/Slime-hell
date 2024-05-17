///@description drones move sideways across the screen

if(instance_exists(drone1)) 
	drone1.startpath(sidePathLong,6,path_action_stop,false);
if(instance_exists(drone2)) 
	drone2.startpath(sidePathShort,6,path_action_stop,false);
if(instance_exists(drone3)) 
	drone3.startpath(sidePathLong,6,path_action_stop,false);
if(instance_exists(drone4)) 
	drone4.startpath(sidePathShort,6,path_action_stop,false);
if(instance_exists(drone5)) 
	drone5.startpath(sidePathLong,6,path_action_stop,false);