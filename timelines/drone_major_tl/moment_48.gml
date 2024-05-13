///@description 3rd drone spawn

	if(BossCTRL.path_flipped == true) {
		drone3 = instance_create_layer(1260, 192, "Instances", drone);
		drone3.startpath(spawnPath3, 8, path_action_stop, false);
		
	}
	else {
		drone3 = instance_create_layer(660, 192, "Instances", drone);
		drone3.startpath(spawnPath3, 8, path_action_stop, false);
	}