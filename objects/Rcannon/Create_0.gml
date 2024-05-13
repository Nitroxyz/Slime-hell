event_inherited()

callmajor = function() {
	
	//I'm gonna put all the attacks in major until simultaneous is coded, that way I can just use callmajor to call the attack.
	
	//creates the grid the attack uses to place the missiles
	tile_grid = instance_create_layer(960, 640, "Instances", missile_grid);
	
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
	
	//8 missiles are spawned, hence i < 8 
	for(var i = 0; i < 8; i +=1)
	{
		//selects a random remaining tile.
		var randtile = irandom(15 - i);
		
		//objects are spawned on the location determined by finding the center of the grid, then adding the location of the tile (from the array). 
		instance_create_layer(tile_grid.x + tile_centers[randtile][0], tile_grid.y + tile_centers[randtile][1], "Instances", missile_warning);
		
		//removes the used tile from the array, allowing the randomizer to select from the remaining tiles
		array_delete(tile_centers, randtile,1);
	}



}