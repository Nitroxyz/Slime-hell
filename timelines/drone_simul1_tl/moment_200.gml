///@desc deletes the drone and the path, and does the simul ending routine
		
		
		path_delete(drone_simul1_path);
		if(instance_exists(simul1_drone)){
			instance_destroy(simul1_drone);
		}
		
		is_simul = false;
		//show_debug_message("a spawner has finished")
		