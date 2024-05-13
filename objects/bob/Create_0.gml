//instance varaibles
max_spedd = 10;
// Dash related variables
dash_distance = 0; // Dash distance in pixels
dash_step = 0; // Step of dash (0 - 17)
dashing = false; // Is he dashing?
min_dash = 80; // Minimum dash distance in pixels
//Dash coordinates
dash_x = 0;
dash_y = 0;

// Dash function sets up all the variable for the dash
dash = function(_x, _y){
	dash_distance = point_distance(x, y, _x, _y);
	if(dash_distance < min_dash){
		return; //End function
	}
	direction = point_direction(x, y, _x, _y);
	//move_towards_point(_x, _y, dash_distance/18);
	dash_x = _x;
	dash_y = _y;
	dashing = true;
	dash_step = 0;
}