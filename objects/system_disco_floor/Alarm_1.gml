/// @description Spawn random white tiles

for(var _x = 0; _x < length_x; _x++){
	for(var _y = 0; _y < length_y; _y++){
		if(irandom(1) == 0){
			var random_color = random_range(0, 4);
			change_color(_x, _y, random_color);
		} else {
			change_color(_x, _y, floor_colors.white);
		}
	}
}
show_debug_message("UWUWUWWUW")
alarm[1] = 120;
