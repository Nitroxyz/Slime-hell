///@description 5th drone spawn

	if(BossCTRL.path_flipped) {
		drone1 = instance_create_layer(1260, 192, "BossLayer", drone);
		major1pathing(drone1,reversespawnPath1,8);
	
	}
	else {
	drone1 = instance_create_layer(660, 192, "BossLayer", drone);
	major1pathing(drone1,spawnPath1,8);
	}