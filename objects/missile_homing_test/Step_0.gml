
if(homing == true) {
	delete_timer += 1;
	var target_dir = point_direction(x, y, target.x, target.y);
	var facing_dif = angle_difference(target_dir,direction);
	
	//image_angle += facing_dif *0.04;
	//direction += facing_dif * 0.04;
	
	//if(facing_dif > 60 || facing_dif < -60) {
	//	turn_boost = 2;
	//} else {
	//turn_boost = 1;	
	//}
	
	speed = 10;
	if(facing_dif > 0) {
	image_angle += 1.5 * turn_boost;
	direction += 1.5 * turn_boost;
	} else {
	image_angle -= 1.5 * turn_boost;
	direction -= 1.5 * turn_boost;	
	}
	
	
}
//once delete timer goes off, homing stops
if(delete_timer > 629) {

turn_boost = 0;
//once it goes offscreen, it is deleted.
if(x > 2080 || x < -100 || y < -100 || y > 1180) {
instance_destroy();	
}
}
