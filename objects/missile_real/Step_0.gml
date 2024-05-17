
if (instance_exists(bob)) {
	
if(homing == true) {
	var target_dir = point_direction(x, y, target.x, target.y);
	var facing_dif = angle_difference(target_dir,direction);
	


	
	speed = 8;
	
	//there is a 4 degree window of facing directly towards the player where it turns MUCH slower
	if(facing_dif > 2) {
		image_angle += 0.75 * turn_boost;
		direction += 0.75 * turn_boost;
	} else if(facing_dif < -2) {
		image_angle -= 0.75 * turn_boost;
		direction -= 0.75 * turn_boost;	
	}
	else {
		image_angle += facing_dif * 0.1;
	}
	
	//I think I'll just increase the time between spawns
	
}

		
	
//once major ends, homing stops
	if((Lcannon.is_major == false && Rcannon.is_major == false) || pewing = true) {
		homing = false;
		turn_boost = 0;
		
		
	}
	//all missiles are now deleted once they go offscreen
	if(x > 2030 || x < -50 || y < -50 || y > 1130) {
		instance_destroy();	
		
		if(pewing == true)
			path_delete(pewpath);
	}
} 

