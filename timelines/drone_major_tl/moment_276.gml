///@description drones move sideways across the screen

if(BossCTRL.path_flipped = true) {
	if(instance_exists(drone1)) 
		major1pathing(drone1,reverseSidePathLong,8);
	if(instance_exists(drone2)) 
		major1pathing(drone2,reverseSidePathShort,8);
	if(instance_exists(drone3)) 
		major1pathing(drone3,reverseSidePathLong,8);
	if(instance_exists(drone4)) 
		major1pathing(drone4,reverseSidePathShort,8);
	if(instance_exists(drone5)) 
		major1pathing(drone5,reverseSidePathLong,8);
}	else {
	if(instance_exists(drone1)) 
		major1pathing(drone1,sidePathLong,8);
	if(instance_exists(drone2)) 
		major1pathing(drone2,sidePathShort,8);
	if(instance_exists(drone3)) 
		major1pathing(drone3,sidePathLong,8);
	if(instance_exists(drone4)) 
		major1pathing(drone4,sidePathShort,8);
	if(instance_exists(drone5)) 
		major1pathing(drone5,sidePathLong,8);
}