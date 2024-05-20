event_inherited()
state = 3;

left_side = true;

callmajor = function() {
	
}

moveup = function() {
	//this will eventually make it fly over from wherever it is, for now it tps
	//Lhand.y = 240;
	//Lhand.x = 260;
	
}

callsimul =  function() {
	is_simul = true;
	
	timeline_index = hand_simulhard_tl;
	timeline_running = true;
	timeline_speed = 1;
	timeline_position = irandom_range(-120,0);
	timeline_loop = false;
}

startpath = function(path,spd,ending,isAbsolute) {
	path_start(path,spd,ending,isAbsolute);
}