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
	
		missile_simul();
} else {
		timeline_position = 134;
}
	
	
	
	
	
	
	
	
	
	