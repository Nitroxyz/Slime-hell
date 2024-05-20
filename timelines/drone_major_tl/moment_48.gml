///@description 3rd drone spawn

	if(BossCTRL.path_flipped) {
		drone3 = instance_create_layer(1260, 192, "BossLayer", drone);
		major1pathing(drone3,reversespawnPath3,8);
	
	}
	else {
	drone3 = instance_create_layer(660, 192, "BossLayer", drone);
	major1pathing(drone3,spawnPath3,8);
	}