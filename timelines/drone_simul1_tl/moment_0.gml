///@desc spawn the drone and start it on its path

	if(left_side) {
		simul1_drone = instance_create_layer(660, 192, "BossLayer", drone);
	} else {
		simul1_drone = instance_create_layer(1260, 192, "BossLayer", drone);
	}
	
	simul1_drone.startpath(drone_simul1_path, 8, path_action_stop, false);
	simul1_drone.pewpewable = true;