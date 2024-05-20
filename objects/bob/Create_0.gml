// instance varaibles
#region
// Max... speed
max_spedd = 10;
// Minimum dash distance in pixels
//min_dash = 80;
// Duration of a click buffer
dash_buffer_time = 10;
//Freeze fills up in x seconds
f_f = 5;
//Freeze deplete x times slow than it fills
f_d = 2;
// Freeze meter must reach this to get maxed
freeze_max = 60 * f_f * f_d;
// Did you know that there is legal cannibalism in europe in 2024?
debug_invincible = true;
// Dash duration aka animation time
dash_max = 22;
#endregion

// Auto-set variables
#region
// Dash related variables
dash_distance = 0; // Dash distance in pixels
dash_step = 0; // Step of dash (0 - 17)
dashing = false; // Is he dashing?
//Dash coordinates
dash_x = 0;
dash_y = 0;
// When true, prevent all movement
move_lock = false;
// Gives the right click a 'dash_buffer_time' long buffer
dash_buffer = 0;
// cant be damaged by trail or projectiles
freezing = false;
// Freeze meter
freeze_meter = freeze_max;
// Freeze ready
freeze_full = true;
#endregion

//Functions
#region
// Dash function sets up all the variable for the dash
dash = function(_x, _y){
	dash_distance = point_distance(x, y, _x, _y);
	/*
	if(dash_distance < min_dash){
		return; //End function
	}
	*/
	direction = point_direction(x, y, _x, _y);
	//move_towards_point(_x, _y, dash_distance/18);
	dash_x = _x;
	dash_y = _y;
	dashing = true;
	dash_step = 0;
	instance_create_layer(x, y, "SlimeTrailFire", fire_trail);
}

stop_dash = function(){
	dashing = false;
	dash_step = 0;
	speed = 0;
}

freeze = function(){
	if(dashing){
		stop_dash();
	}
	move_lock = true;
	speed = 0;
	freezing = true;
	alarm_set(0, 52);
	var freezy = instance_create_layer(x, y, "MrFreeze", mr_freeze);
	with(freezy){
		image_xscale = other.image_xscale;
	}
}

dying = function(){
	if(!debug_invincible){
		instance_destroy();
	}
}
#endregion