///@desc deletes the drone and the path, and does the simul ending routine

		path_delete(drone_simul1_path);
		instance_destroy(simul1_drone);
		
		is_simul = false;
		BossCTRL.countsimuls();
		//show_debug_message("a spawner has finished")
		