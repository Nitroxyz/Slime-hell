
if (instance_exists(bob)) {
if(homing == true) {
	delete_timer += 1;
	var target_dir = point_direction(x, y, target.x, target.y);
	var facing_dif = angle_difference(target_dir,direction);
	

//rather than turning when they go offscreen, it might just be better to have the launcher shoot a new set of missiles
//I've done enough work for today tho

//missiles turn straight towards the player if they are too far offscreen
//otherwise they pass by 2-3 times before the major ends
	if(x > 2280 || x < -300 || y < -300 || y > 1380) {
		image_angle = target_dir;
		direction = target_dir;
	} 
	
	speed = 10;
	
	//there is a 4 degree window of facing directly towards the player where it won't turn
	if(facing_dif > 2) {
	image_angle += 0.75 * turn_boost;
	direction += 0.75 * turn_boost;
	} else if(facing_dif < -2) {
	image_angle -= 0.75 * turn_boost;
	direction -= 0.75 * turn_boost;	
	}
	
	
}
//once delete timer goes off, homing stops
	if(pewing = true) {
		if(x > 2080 || x < -100 || y < -100 || y > 1180) {
		instance_destroy();	
		path_delete(pewpath);
		}
	}
	
//once delete timer goes off, homing stops
	if(delete_timer > 629 || pewing = true) {

		turn_boost = 0;
		//then, it is deleted once it goes offscreen
		if(x > 2080 || x < -100 || y < -100 || y > 1180) {
		instance_destroy();	
		}
	}
} 

