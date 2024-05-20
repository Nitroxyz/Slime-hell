delete_timer += 1;
delay_timer +=1
if(delete_timer > 89) {


if(BossCTRL.ongoing_event == true) {
	depth = 399;
	image_alpha = 0.9; 
} else {
	depth = 1300;
	image_alpha = 1;
}




instance_create_layer(warning_x,warning_y,"Projectiles",fillmissile_explosion)
with(fillmissile_explosion)
	active_timer = other.explosion_active_frames;
instance_destroy();	
}


if(delay_timer > delay_time) {
path_speed = pathSpeed;	
}