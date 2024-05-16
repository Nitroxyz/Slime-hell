/// @description 

//Size of grid
length_x = 12;
length_y = 6
// Start value of grid (Top left)
start_x = 500;
start_y = 500
// Distance between panels
panel_distance = 80;


floor_colors = {
	red : 0,
	blue : 1,
	white : 2,
	none : 3,
};

panel_grid = ds_grid_create(length_x, length_y);
for(var _x = 0; _x < length_x; _x++){
	for(var _y = 0; _y < length_y; _y++){
		var inst = instance_create_layer(start_x + panel_distance * _x, start_y + panel_distance * _y, "DiscoLayer", disco_panel);
		with (inst){
			image_index = random_range(0, 3);
		}
		ds_grid_set(panel_grid, _x, _y, inst);
	}
}

change_color = function(_x, _y, color){
	var inst = ds_grid_get(panel_grid, _x, _y);
	with(inst){
		image_index = color;
	}
}

/* You should use floor_colors[color] in the instead!
change_color_str = function(_x, _y, color){
	var inst = ds_grid_get(panel_grid, _x, _y);
	with(inst){
		image_index = floor_colors[color];
	}
}
*/

get_color = function(_x, _y){
	var inst = ds_grid_get(panel_grid, _x, _y);
	return inst.image_index;
}

// Returns an array of a struct with {x_pos, y_pos}
find_color = function(color){
	result = [];
	for(var _x = 0; _x < length_x; _x++){
		for(var _y = 0; _y < length_y; _y++){
			if(get_color(_x, _y) == color){
				array_push(result, {x_pos : _x, y_pos : _y});
			}
		}
	}
	return result;
}