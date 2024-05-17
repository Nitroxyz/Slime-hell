///@desc sets up grid and spawns 1st missile
	//creates the grid the attack uses to place the missiles
	
if(instance_exists(bob)) {
	tile_grid = instance_create_layer(bob.x, bob.y, "BossLayer", missile_grid_object);


		
	/*

	list of the centers of each tile, by  distance from the grid center.
	(-149,-149) ( -49,-149) (  49,-149) (149,-149)
	(-149, -49) ( -49, -49) (  49, -49) (149, -49)
	(-149,  49) ( -49,  49) (  49,  49) (149,  49)
	(-149, 149) ( -49, 149) (  49, 149) (149, 149)
	put into a 2d array from left to right, top to bottom.
	the array bounds are 16 by 2, for the 16 entries and the x/y coord.
	ex: (tile_centers[4][1], tile_centers[4][2]) are the coordinates for the 4th tile on the grid. (149, -149)
	*/
	tile_centers = [
	[-149,-149],[-49,-149],[49,-149],[149,-149],[-149,-49],[-49,-49],[49,-49],[149,-49],[-149,49],[-49,49],[49,49],[149,49],[-149,149],[-49,149],[49,149],[149,149]
	];
	
	//8 missiles are spawned, so 8 moments
	
		//selects a random remaining tile.
		
		var randtile = irandom(array_length(tile_centers) - 1);
		
		//only spawns objects if the missile would fall within the bounds of the screen
		if(tile_grid.x + tile_centers[randtile][0] > 0 && tile_grid.x + tile_centers[randtile][0] < 1920 && tile_grid.y + tile_centers[randtile][1] > 0 && tile_grid.y + tile_centers[randtile][1] < 1080) {
		//objects are spawned on the location determined by finding the center of the grid, then adding the location of the tile (from the array). 
		//spawns the X
		
		var warning = instance_create_layer(tile_grid.x + tile_centers[randtile][0], tile_grid.y + tile_centers[randtile][1], "BossLayer", missile_warning);
		
		//Spawns the missile, then starts it on the path
		gridMissile1  = instance_create_layer(tile_grid.x + tile_centers[randtile][0], tile_grid.y + tile_centers[randtile][1] - 1080, "Projectiles", missile_incorporeal);
		gridMissile1.startpath(fallingPath, 36, path_action_stop, false, 60);
		gridMissile1.warning_x = warning.x;
		gridMissile1.warning_y = warning.y;
		}
		
		//removes the used tile from the array, allowing the randomizer to select from the remaining tiles
		array_delete(tile_centers, randtile,1);
} else {
		timeline_position = 134;
}
	