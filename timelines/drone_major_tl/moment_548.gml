///@description 2nd drone return
	
	//its still staggered tho
if(instance_exists(drone2)) {
		if(BossCTRL.path_flipped) {
			major1pathing(drone2,returnPath2,8)
		} else {
			major1pathing(drone2,reversereturnPath2,8)
		}
	}