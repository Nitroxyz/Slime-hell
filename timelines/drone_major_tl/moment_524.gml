///@description prepares the paths and starts moving the first drone 

	//modifies the spawnPaths to be used to go the other way.
	if(BossCTRL.path_flipped == true) {
		
		//flips the horizontal paths back if they were flipped initially

		
		//flips path to default orientation, then translates it

		
		/*
		PATH LENGTH
		-x for moving to the left, +y for moving down.
		(-600,256)
		(-280,384)
		(-660,512)
		(-280,640)
		(-600,768)
		*/
		


		
	}
	//finally, make the drones start returning
	if(instance_exists(drone1)) {
		if(BossCTRL.path_flipped) {
			major1pathing(drone1,returnPath1,8)
		} else {
			major1pathing(drone1,reversereturnPath1,8)
		}
	}
	