/// @description Change color (basic)
// You can write your code in this editor

for(var _x = 0; _x < length_x; _x++){
	for(var _y = 0; _y < length_y; _y++){
		var random_color = random_range(0, 4);
		change_color(_x, _y, random_color);
	}
}
alarm[0] = 60;