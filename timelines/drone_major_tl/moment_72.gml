///@description 4th drone spawn

	if(BossCTRL.path_flipped == true) {
		drone2 = instance_create_layer(1260, 192, "Instances", drone);
		drone2.startpath(spawnPath2, 8, path_action_stop, false);
		
	}
	else {
		drone2 = instance_create_layer(660, 192, "Instances", drone);
		drone2.startpath(spawnPath2, 8, path_action_stop, false);
	}