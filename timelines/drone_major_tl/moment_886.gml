///@description returns the path to normal and deletes the drones.
		
		//major ending routine: set is_major to false, set major alarm to 0
		is_major = false;
		BossCTRL.alarm[0] = 300;
		//paths need to be flipped back if entering the right door.
		if(BossCTRL.path_flipped == false) {
		path_mirror(spawnPath1);
		path_mirror(returnPath2);
		path_mirror(spawnPath3);
		path_mirror(returnPath4);
		path_mirror(spawnPath5);
		}
		
		//unreversing the path and unshifting it so it is ready for the next drone major
		path_reverse(spawnPath1);
		path_reverse(returnPath2);
		path_reverse(spawnPath3);
		path_reverse(returnPath4);
		path_reverse(spawnPath5);
		path_shift(spawnPath1, -600, 256);
		path_shift(returnPath2, -600, 384);
		path_shift(spawnPath3, -600, 512);
		path_shift(returnPath4, -600, 640);
		path_shift(spawnPath5, -600, 768);
		
		//finally, destroys the drones
		//since other drones could be doing a simultaneous, they need to be destroyed individually.
		instance_destroy(drone1);
		instance_destroy(drone2);
		instance_destroy(drone3);
		instance_destroy(drone4);
		instance_destroy(drone5);
		
		//for testing multiple in a row
		//BossCTRL.spawner_right.callmajor();
		
		//if you are wondering why I don't just use a for loop, I would have to do some shenanigans to get the shift to work and its like 1 am