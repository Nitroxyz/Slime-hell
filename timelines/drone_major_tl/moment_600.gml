///@description prepares the paths and starts moving the first drone 

	//modifies the spawnPaths to be used to go the other way.
	if(BossCTRL.path_flipped == true) {
		
		//flips the horizontal paths back if they were flipped initially
		path_mirror(sidePathLong);
		path_mirror(sidePathLongOffscreen);
		path_mirror(sidePathShort);
		path_mirror(sidePathShortOffscreen);
		
		//flips path to default orientation, then translates it
		path_mirror(spawnPath1);
		path_mirror(spawnPath2);
		path_mirror(spawnPath3);
		path_mirror(spawnPath4);
		path_mirror(spawnPath5);
		
		/*
		PATH LENGTH
		-x for moving to the left, +y for moving down.
		(-600,256)
		(-280,384)
		(-660,512)
		(-280,640)
		(-600,768)
		*/
		
		//FUCK FUCK
		path_shift(spawnPath1, 600, -256);
		path_shift(returnPath2, 600, -384);
		path_shift(spawnPath3, 600, -512);
		path_shift(returnPath4, 600, -640);
		path_shift(spawnPath5, 600, -768);
		
		//reverses the path so that the drone will actually travel into the door
		path_reverse(spawnPath1);
		path_reverse(returnPath2);
		path_reverse(spawnPath3);
		path_reverse(returnPath4);
		path_reverse(spawnPath5);
	}
	else {
		
		//translates the path, then flips it to alt orientation
		path_shift(spawnPath1, 600, -256);
		path_shift(returnPath2, 600, -384);
		path_shift(spawnPath3, 600, -512);
		path_shift(returnPath4, 600, -640);
		path_shift(spawnPath5, 600, -768);
		path_mirror(spawnPath1);
		path_mirror(returnPath2);
		path_mirror(spawnPath3);
		path_mirror(returnPath4);
		path_mirror(spawnPath5);
		
		//reverses the path so that the drone will actually travel into the door
		path_reverse(spawnPath1);
		path_reverse(returnPath2);
		path_reverse(spawnPath3);
		path_reverse(returnPath4);
		path_reverse(spawnPath5);

		
	}
	//finally, make the drones start returning
	drone1.startpath(spawnPath1,8,path_action_stop,false);