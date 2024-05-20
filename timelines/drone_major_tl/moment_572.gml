///@description 3rd drone return

if(instance_exists(drone3)) {
		if(BossCTRL.path_flipped) {
			major1pathing(drone3,returnPath3,8)
		} else {
			major1pathing(drone3,reversereturnPath3,8)
		}
	}