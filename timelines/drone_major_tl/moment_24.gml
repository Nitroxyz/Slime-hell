///@description 2nd drone spawn

	if(BossCTRL.path_flipped) {
		drone4 = instance_create_layer(1260, 192, "BossLayer", drone);
		major1pathing(drone4,reversespawnPath4,8);
	
	}
	else {
	drone4 = instance_create_layer(660, 192, "BossLayer", drone);
	major1pathing(drone4,spawnPath4,8);
	}