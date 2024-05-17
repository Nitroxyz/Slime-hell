event_inherited()

//I was trying to avoid this, but the attacks just wont work without this
left_side = true;

callmajor = function() {

	
	//starts the major, setting is_major to true
	is_major = true;
	
	//true if the right spawner is doing the attack.
	BossCTRL.path_flipped = false;

	

	
	timeline_index = drone_major_tl
	timeline_running = true;
	timeline_speed = 1;
	timeline_position = 0;
	timeline_loop = false;
}

callsimul =  function() {
	
	
	show_debug_message("Lspawner is simulling all over the place");
	//The standard simul starting routine.
	is_simul = true;
	BossCTRL.countsimuls()
	
	//this is a short path that exits the spawn, I can use it as a shortcut to make the drone take a curved path out the spawn door
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