///@description 4th drone return

if(instance_exists(drone4)) {
		if(BossCTRL.path_flipped) {
			major1pathing(drone4,returnPath4,8)
		} else {
			major1pathing(drone4,reversereturnPath4,8)
		}
	}