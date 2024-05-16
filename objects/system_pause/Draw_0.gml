/// @description 

if(paused){
	if(!surface_exists(paused_surf)){
		if(paused_surf == -1){
			instance_deactivate_all(true);
			//instance_activate_object(GUI);
		}
		paused_surf = surface_create(room_width, room_height);
		surface_set_target(paused_surf);
		draw_surface(application_surface, 0, 0);
		surface_reset_target();
	} else {	
		// Add draw for pause screen
		draw_surface(paused_surf, 0, 0);
		draw_set_alpha(0.25);
		draw_set_color(c_black);
		draw_rectangle(0, 0, room_width, room_height, false);
		draw_set_alpha(1);
		draw_set_color(c_white);
		draw_text_transformed_colour(room_width / 2, room_height / 2, "PAUSED", 2, 2, 0, c_aqua, c_aqua, c_aqua, c_aqua, 1);
		
	}
}