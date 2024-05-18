event_inherited()

left_side = false;

callmajor = function() {
	
	
	//starts the major, setting is_major to true
	is_major = true;
	
	//true if the right spawner is doing the attack.
	BossCTRL.path_flipped = true;
	
	timeline_index = drone_major_tl
	timeline_running = true;
	timeline_speed = 1;
	timeline_position = 0;
	timeline_loop = false;
}

	
callsimul =  function() {
		show_debug_message("Rspawner is simulling all over the place"); // nya
	//The standard simul starting routine.
	is_simul = true;
	
	//drone simul will spawn a drone that will go to a certain location
	//What is unique about this attack is where the drone travels too. 
	//but since idk where that will be yet I will try to implement a system to make the path go wherever you want.
	//for now the path will go to a random point below the screen.
	drone_simul1_path = path_duplicate(spawnPathShort);
	
	//this is the part you would change to make the drone go wherever.
	path_add_point(drone_simul1_path, random_range(0-x,1920-x), 1280, 100);
	
	//starting the timeline
	timeline_index = drone_simul1_tl;
	timeline_running = true;
	timeline_speed = 1;
	timeline_position = irandom_range(-120,0);
	timeline_loop = false;
}