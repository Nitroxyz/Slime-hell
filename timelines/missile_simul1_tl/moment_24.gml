///@desc spawn 3rd missile

		var randtile = irandom(array_length(tile_centers) - 1);
		
		//only spawns objects if the missile would fall within the bounds of the screen
		if(tile_grid.x + tile_centers[randtile][0] > 0 && tile_grid.x + tile_centers[randtile][0] < 1920 && tile_grid.y + tile_centers[randtile][1] > 0 && tile_grid.y + tile_centers[randtile][1] < 1080) {
		//objects are spawned on the location determined by finding the center of the grid, then adding the location of the tile (from the array). 
		//spawns the X
		
		instance_create_layer(tile_grid.x + tile_centers[randtile][0], tile_grid.y + tile_centers[randtile][1], "BossLayer", missile_warning);
		
		//Spawns the missile, then starts it on the path
		gridMissile1  = instance_create_layer(tile_grid.x + tile_centers[randtile][0], tile_grid.y + tile_centers[randtile][1] - 1080, "Projectiles", missile_incorporeal);
		gridMissile1.startpath(fallingPath, 36, path_action_stop, false, 60);
		}
		
		//removes the used tile from the array, allowing the randomizer to select from the remaining tiles
		array_delete(tile_centers, randtile,1);