///@description 5th drone return

if(instance_exists(drone5)) {
		if(BossCTRL.path_flipped) {
			major1pathing(drone5,returnPath5,8)
		} else {
			major1pathing(drone5,reversereturnPath5,8)
		}
	}