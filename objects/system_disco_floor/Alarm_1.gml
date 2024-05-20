/// @description Spawn random white tiles
white_tiles = 0;
for(var _x = 0; _x < length_x; _x++){
	for(var _y = 0; _y < length_y; _y++){
		//this line now allows for the chance of getting a white tile to be modified and for a cap.
		if((irandom(tile_chance) == 0 || white_tiles > tile_cap) && final_barrage == false){
			var random_color = random_range(0, 4);
			change_color(_x, _y, random_color);
		} else {
			change_color(_x, _y, floor_colors.white);
			white_tiles += 1;
		}
	}
}
destr_drop_bomb();
show_debug_message("UWUWUWWUW")
if(final_barrage == true) {
alarm[1] = -1;	
} else {
alarm[1] = 120;
}