///@description 4th drone spawn

	if(BossCTRL.path_flipped) {
		drone2 = instance_create_layer(1260, 192, "BossLayer", drone);
		major1pathing(drone2,reversespawnPath2,8);
	
	}
	else {
	drone2 = instance_create_layer(660, 192, "BossLayer", drone);
	major1pathing(drone2,spawnPath2,8);
	}