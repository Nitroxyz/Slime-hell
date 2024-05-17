//missiles will either be in homing or pewing mode, with each having different properties (no, this can't just be one variable)
damage_dealing_state = true;
homing = false;
pewing = false;
major_missile = false;
recalibrating = false;

if (instance_exists(bob)) {



//default target
target = bob;


image_angle = point_direction(x, y, target.x, target.y);
direction = point_direction(x, y, target.x, target.y);

turn_boost = 1;
}
else {
instance_destroy();
}

//unmodified startpath
startpath = function(path,spd,ending,isAbsolute) {
	path_start(path,spd,ending,isAbsolute);
}

//similar to bullet pewpew but with the target already set
bigpew = function(spd,ending,isAbsolute) {
	if (instance_exists(bob)) {
		pewpath = path_add();
		image_angle = point_direction(x, y, target.x, target.y);
		path_set_closed(pewpath,false);
		path_add_point(pewpath,0,0,100);
		path_add_point(pewpath, target.x - x,target.y - y,100);
		pewing = true;
		//it seems like the timeline isnt able to access the function variables unless I copy them to a different variable.
		tl_spd = spd;
		tl_ending = ending;
		tl_isAbsolute = isAbsolute;
		
		//ok so I know its kinda silly to use two timelines for one attack but if I don't then the other timeline is gonna have like 24 moments in it that are all doing unrelated things and overlapping with eachother and trying to code that would give me an aneurysm 
		timeline_index = missile_telegraphing_tl;
		timeline_running = true;
		timeline_speed = 1;
		timeline_position = 0;
		timeline_loop = false;
	}
		
}