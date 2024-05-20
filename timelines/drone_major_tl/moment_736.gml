///@description returns the path to normal and deletes the drones.
		
		//major ending routine: set is_major to false, set major alarm to 0
		is_major = false;
		if(BossCTRL.ongoing_event = true) {
			pause_simul = true;
		} else {
			BossCTRL.alarm[0] = 300;
		}
		//paths need to be flipped back if entering the right door.

		
		//unreversing the path and unshifting it so it is ready for the next drone major

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