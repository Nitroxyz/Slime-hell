event_inherited()

callmajor = function() {
	//the side the drones come from is decided by which spawner is called, so no randomness here.

	//true if the right spawner is doing the attack.
	BossCTRL.path_flipped = false;
	
	//starts the major, setting is_major to true
	is_major = true;
	timeline_index = drone_major_tl
	timeline_running = true;
	timeline_speed = 1;
	timeline_position = 0;
	timeline_loop = false;
}

callsimul =  function() {
	
	is_simul = true;

	
	BossCTRL.countsimuls()
	Lspawner.x -= 100;
}