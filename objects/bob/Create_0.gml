//instance varaibles
max_spedd = 10;
// Dash related variables
dash_distance = 0; // Dash distance in pixels
dash_step = 0; // Step of dash (0 - 17)
dashing = false; // Is he dashing?
min_dash = 0; // Minimum dash distance in pixels

// Dash function
dash = function(_x, _y){
	dash_distance = point_distance(x, y, _x, _y);
	direction = point_direction(x, y, _x, _y);
	x = _x;
	y = _y;
	sprite_index = hot;
	alarm_set(0, 18);
}