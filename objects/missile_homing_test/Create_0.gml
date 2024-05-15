//homing must be enabled by the program, since i'm planning to have it follow a short path out of the launcher before starting homing.
homing = true;
//default target
target = inst_bob;

image_angle = point_direction(x, y, target.x, target.y);
direction = point_direction(x, y, target.x, target.y);

delete_timer = 0;

turn_boost = 1;

//unmodified startpath
startpath = function(path,spd,ending,isAbsolute) {
	path_start(path,spd,ending,isAbsolute);
}