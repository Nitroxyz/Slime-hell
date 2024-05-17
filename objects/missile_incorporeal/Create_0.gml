//delete_timer shouldnt be neccessary anymore but I don't feel like debugging rn so I'm just not gonna find out
delete_timer = 0;
delay_timer = 0;
delay_time = 0;

pathSpeed = 0;

warning_x= 0;

warning_y = 0;

//similar to other startpaths, but with a delay variable in frames. 
//delay is from when the path is started
//
startpath = function(path,spd,ending,isAbsolute,delay) {
	delay_timer = 0;
	delay_time = delay;
	//spd is stored in pathSpeed, and then path_speed is set to pathSpeed once the delay is up.
	pathSpeed = spd;
	path_start(path,0,ending,isAbsolute);
}