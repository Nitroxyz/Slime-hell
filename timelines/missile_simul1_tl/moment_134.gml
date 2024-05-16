///@desc runs the simul ending routine: call countsimuls at the end of every simultaneous, and set is_simul false
	
	is_simul = false;
	BossCTRL.countsimuls();
	//show_debug_message("a launcher has finished")
