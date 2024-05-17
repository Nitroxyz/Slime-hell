/// @description Draw into the dark

if(!surface_exists(surf)){
	surf = surface_create(room_width, room_height);
} else {
	surface_set_target(surf);
	draw_clear_alpha(c_black, 0);
	draw_set_colour(c_black);
	draw_rectangle(0, 0, room_width, room_height, false);
	draw_set_color(c_white);
	gpu_set_blendmode(bm_subtract);
	// HERE YOU DO DRAWS
	with(bob){
		draw_self();
		draw_circle(x, y, 120, false);
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
	surface_reset_target();
	gpu_set_blendmode(bm_normal);
	draw_surface(surf, 0, 0);
}