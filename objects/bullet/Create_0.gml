/// @description Insert description here
// You can write your code in this editor

/*
startpath = function(,spd,ending,isAbsolute) {
	path_start(path,spd,ending,isAbsolute);
}
*/
damage_dealing_state = true;
pewpew = function(target,spd,ending,isAbsolute) {
		var pewpath = path_add();
		path_set_closed(pewpath,false);
		path_add_point(pewpath,0,0,100);
		path_add_point(pewpath, target.x - x,target.y - y,100);
		path_start(pewpath,spd,ending,isAbsolute);
}

