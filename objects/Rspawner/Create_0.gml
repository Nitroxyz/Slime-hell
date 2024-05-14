event_inherited()

callmajor = function() {
	
	//true if the right spawner is doing the attack.
	BossCTRL.path_flipped = true;
	
	//starts the major, setting is_major to true
	is_major = true;
	timeline_index = drone_major_tl
	timeline_running = true;
	timeline_speed = 1;
	timeline_position = 0;
	timeline_loop = false;
}

callsimul =  function() {
	
	//sets is_simul to true immediately
	is_simul = true;
	//calls countsimuls at the start of every simul
	BossCTRL.countsimuls()
	Lspawner.x -= 100;
}