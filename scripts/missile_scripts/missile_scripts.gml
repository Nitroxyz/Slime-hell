// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function majorhoming() {
	var homing_missile = instance_create_layer(x, y + 64, "Projectiles", missile_real);
	//homing_missile.homing = true;
	with(homing_missile){
		homing = true;
		major_missile = true;
	}
}

function simul2pew(missile){
	if(instance_exists(missile)) {
		missile.bigpew(20, path_action_continue, false);
	}
}

function missile_simul(){
	//selects a random remaining tile.
	var randtile = irandom(array_length(tile_centers) - 1);

	//only spawns objects if the missile would fall within the bounds of the screen
	if(tile_grid.x + tile_centers[randtile][0] > 0 && tile_grid.x + tile_centers[randtile][0] < 1920 && tile_grid.y + tile_centers[randtile][1] > 0 && tile_grid.y + tile_centers[randtile][1] < 1080) {
		//objects are spawned on the location determined by finding the center of the grid, then adding the location of the tile (from the array). 
		//spawns the X
		
		var warning = instance_create_layer(tile_grid.x + tile_centers[randtile][0], tile_grid.y + tile_centers[randtile][1], "BossLayer", missile_warning);
		
		//Spawns the missile, then starts it on the path
		var missile  = instance_create_layer(tile_grid.x + tile_centers[randtile][0], tile_grid.y + tile_centers[randtile][1] - 1080, "Projectiles", missile_incorporeal);
		with(missile){
			// Where does fallingPath come from?
			startpath(fallingPath, 36, path_action_stop, false, 60);
			warning_x = warning.x;
			warning_y = warning.y;
		}
	}
		
	//removes the used tile from the array, allowing the randomizer to select from the remaining tiles
	array_delete(tile_centers, randtile,1);
}