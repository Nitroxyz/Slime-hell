/// @description Insert description here
damage_dealing_state = true;
pewtimer = 0;
pewpewable = false;
//This is used to make a drone instance start following a path directly from a timeline or controller.
//you can use it the exact same way you would use path_start. if you are confused, you can see how its implemented in drone_major_tl
startpath = function(path,spd,ending,isAbsolute) {
	path_start(path,spd,ending,isAbsolute);
}

//allows the drone to shoot at the player
