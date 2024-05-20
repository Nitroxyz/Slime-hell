///@description 1st drone spawn
	
	//TODO
	//move the doors so that the drones go in/out the center (changing the drones instead would require like an hour of work)
	
	//flips path if coming from the right, also flips spawn location
	/*
	if(BossCTRL.path_flipped) {
		path_mirror(sidePathLong);
		path_mirror(sidePathLongOffscreen);
		path_mirror(sidePathShort);
		path_mirror(sidePathShortOffscreen);
		path_mirror(spawnPath1);
		path_mirror(spawnPath2);
		path_mirror(spawnPath3);
		path_mirror(spawnPath4);
		path_mirror(spawnPath5);
	}
	*/
	
	if(BossCTRL.path_flipped) {
		drone5 = instance_create_layer(1260, 192, "BossLayer", drone);
		major1pathing(drone5,reversespawnPath5,8);
	
	}
	else {
	drone5 = instance_create_layer(660, 192, "BossLayer", drone);
	major1pathing(drone5,spawnPath5,8);
	}