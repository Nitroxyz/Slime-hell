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


function eventmissiles(grid_centerx,grid_centery,explosion_active){
	//selects a random remaining tile.
	var event_tile_centers = [
	[-149,-149],[-49,-149],[49,-149],[149,-149],[-149,-49],[-49,-49],[49,-49],[149,-49],[-149,49],[-49,49],[49,49],[149,49],[-149,149],[-49,149],[49,149],[149,149]
	];
for(var i = 0; i < array_length(event_tile_centers); i++) {
	var currtile = i;
	
	//only spawns objects if the missile would fall within the bounds of the screen
	if(grid_centerx + event_tile_centers[currtile][0] > 0 && grid_centerx + event_tile_centers[currtile][0] < 1920 && grid_centery + event_tile_centers[currtile][1] > 0 && grid_centery + event_tile_centers[currtile][1] < 1080) {
		//objects are spawned on the location determined by finding the center of the grid, then adding the location of the tile (from the array). 
		//spawns the X
		
		var warning = instance_create_layer(grid_centerx + event_tile_centers[currtile][0], grid_centery + event_tile_centers[currtile][1], "BossLayer", fillmissile_warning);
		
		//Spawns the missile, then starts it on the path
		var missile  = instance_create_layer(grid_centerx + event_tile_centers[currtile][0], grid_centery + event_tile_centers[currtile][1] - 1080, "Projectiles", fillmissile_incorporeal);
		with(missile){
			// Where does fallingPath come from?
			startpath(fallingPath, 36, path_action_stop, false, 60);
			warning_x = warning.x;
			warning_y = warning.y;
			explosion_active_frames = explosion_active;
		}
	}
}
	//removes the used tile from the array, allowing the randomizer to select from the remaining tiles
	array_delete(event_tile_centers, i,1);
}

function fillscreen() {
	//top ones
eventmissiles(192,204,20);

//these 3 arent needed because the boss will be there
//eventmissiles(612,204,20);
//eventmissiles(1020,204,20);
//eventmissiles(1428,204,20);

eventmissiles(1836,204,20);
eventmissiles(1736,204,20);

//left side
eventmissiles(192,612,20);
eventmissiles(192,1020,20);

//right side
eventmissiles(1836,612,20);
eventmissiles(1736,612,20);
eventmissiles(1836,1020,20);
eventmissiles(1736,1020,20);
}