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
	show_debug_message("Lspawner is simulling all over the place"); // owo
	
	//The standard simul starting routine.
	is_simul = true;
	
	
	/*
	switch(Rcannon.timeline_index){
		case missile_simul1_tl:
			simul = 2;
			break;
		case missile_simul2_tl:
			simul = 1;
			break;
		default: // When it's empty
			simul = choose(1, 2);
	}
	*/
	
	
		simul = 1;
	switch (simul) {
		case 1:
			drone_simul1_path = path_duplicate(spawnPathShort);
			
			//this is the part you would change to make the drone go wherever.
			path_add_point(drone_simul1_path, random_range(0-x,1920-x), 1280, 100);
			
			//starting the timeline
			timeline_index = drone_simul1_tl;
			timeline_running = true;
			timeline_speed = 1;
			timeline_position = irandom_range(-120,0);
			timeline_loop = false;
			break;
		case 2:
			
	}
}