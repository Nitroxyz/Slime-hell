///@description 2nd drone spawn

	if(BossCTRL.path_flipped == true) {
		drone4 = instance_create_layer(1260, 192, "Instances", drone);
		drone4.startpath(spawnPath4, 8, path_action_stop, false);	
	}
	else {
		drone4 = instance_create_layer(660, 192, "Instances", drone);
		drone4.startpath(spawnPath4, 8, path_action_stop, false);
	}