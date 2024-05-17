
if (instance_exists(bob)) {
	
if(homing == true) {
	var target_dir = point_direction(x, y, target.x, target.y);
	var facing_dif = angle_difference(target_dir,direction);
	


	
	speed = 12;
	
	//there is a 4 degree window of facing directly towards the player where it won't turn
	if(facing_dif > 2) {
		image_angle += 0.75 * turn_boost;
		direction += 0.75 * turn_boost;
	} else if(facing_dif < -2) {
		image_angle -= 0.75 * turn_boost;
		direction -= 0.75 * turn_boost;	
	}
	
	
}

		
	
//once major ends, homing stops
	if((Lcannon.is_major == false && Rcannon.is_major == false) || pewing = true) {
		homing = false;
		turn_boost = 0;
		
		
	}
	//all missiles are now deleted once they go offscreen
	if(x > 2080 || x < -100 || y < -100 || y > 1180) {
		instance_destroy();	
		
		if(pewing == true)
			path_delete(pewpath);
	}
} 

