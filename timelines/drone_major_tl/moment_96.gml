///@description 5th drone spawn

	if(BossCTRL.path_flipped == true) {
		drone1 = instance_create_layer(1260, 192, "Instances", drone);
		drone1.startpath(spawnPath1, 8, path_action_stop, false);
	}
	else {
		drone1 = instance_create_layer(660, 192, "Instances", drone);
		drone1.startpath(spawnPath1, 8, path_action_stop, false);
	}