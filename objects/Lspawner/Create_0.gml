event_inherited()

callmajor = function() {
	//the side the drones come from is decided by which spawner is called, so no randomness here.
	
	//for now I'm just gonna spawn the drones at the side of the screen.
	//drones are numbered from top to bottom

	//true if the right spawner is doing the attack.
	BossCTRL.path_flipped = false;
	
	//create the timeline, and I have to manually activate it for some reason
	
	timeline_index = drone_major_tl
	timeline_running = true;
	timeline_speed = 1;
	timeline_position = 0;
	timeline_loop = false;
	
	
	
	/* 
	DRONE LOCATIONS
	in order 1-5 (using the left side)
	(0,384)
	(320,512)
	(0,640)
	(320,768)
	(0,896)
	
	DOOR LOCATION
	(660,192)
	
	PATH LENGTH
	-x for moving to the left, +y for moving down.
	(-600,256)
	(-280,384)
	(-660,512)
	(-280,640)
	(-600,768)
	
	
	formula for path points (yes, this is more complicated than it needs to be, but I think it looks better than default curve)
	x = path length x (from the above table)
	y = path lenght y (from the above list)
	point 1 (  0, 0)
	point 2 (  0, y/2)
	point 3 (x/2, y - y/16)
	point 4 (  x, y)
	*/
}


