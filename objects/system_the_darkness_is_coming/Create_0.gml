/// @description 
screen_width = 1920;
screen_height = 1080;
surf = surface_create(screen_width, screen_height);


/*
0 = none
1 = beginning cutscene
2 = missile phase
*/
state = 0;

d_s = function(a, b, c, d, e, f){
	draw_sprite_ext(a, b, c, d, e, f, 0, c_white, 1);
}