///@desc spawn 7th missile

		var randtile = irandom(15 - (timeline_position/2));
		
		//objects are spawned on the location determined by finding the center of the grid, then adding the location of the tile (from the array). 
		instance_create_layer(tile_grid.x + tile_centers[randtile][0], tile_grid.y + tile_centers[randtile][1], "BossLayer", missile_warning);
		
		//Spawns the missile, then starts it on the path
		gridMissile7  = instance_create_layer(tile_grid.x + tile_centers[randtile][0], tile_grid.y + tile_centers[randtile][1] -1080, "Projectiles", missile_incorporeal);
		gridMissile7.startpath(fallingPath, 36, path_action_stop, false, 170);

		//removes the used tile from the array, allowing the randomizer to select from the remaining tiles
		array_delete(tile_centers, randtile,1);