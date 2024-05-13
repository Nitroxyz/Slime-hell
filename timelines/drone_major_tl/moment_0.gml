///@description 1st drone spawn
	
	//TODO
	//move the doors so that the drones go in/out the center (changing the drones instead would require like an hour of work)
	
	//flips path if coming from the right, also flips spawn location
	if(BossCTRL.path_flipped == true) {
		path_mirror(sidePathLong);
		path_mirror(sidePathLongOffscreen);
		path_mirror(sidePathShort);
		path_mirror(sidePathShortOffscreen);
		path_mirror(spawnPath1);
		path_mirror(spawnPath2);
		path_mirror(spawnPath3);
		path_mirror(spawnPath4);
		path_mirror(spawnPath5);
		drone5 = instance_create_layer(1260, 192, "Instances", drone);
		drone5.startpath(spawnPath5, 8, path_action_stop, false);
	
	}
	else {
	drone5 = instance_create_layer(660, 192, "Instances", drone);
	drone5.startpath(spawnPath5, 8, path_action_stop, false);
	}