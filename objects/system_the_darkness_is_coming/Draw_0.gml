/// @description 
surface_set_target(surf);
draw_clear_alpha(c_black, 0);
draw_set_colour(c_black);
draw_rectangle(0, 0, screen_width, screen_height, false);
draw_set_color(c_white);
gpu_set_blendmode(bm_subtract);
//Do your draws
with(bob){
	draw_self();
	draw_circle(x, y, 100, false);
}
with(mr_freeze){
	draw_self();
}
with(mr_dead){
	draw_self();
}
with(disco_panel){
	draw_self();
}
with(fire_trail){
	if(image_index == 1){
		draw_self();
	}
}
//draw_sprite(spr_incomprehensible_gif, 0, 1000, 500);
//draw_rectangle(0, 0, screen_width, screen_height, false);
surface_reset_target();
gpu_set_blendmode(bm_normal);

if(!surface_exists(surf)){
surf = surface_create(screen_width, screen_height);
} else {
draw_surface(surf, 0, 0);
}