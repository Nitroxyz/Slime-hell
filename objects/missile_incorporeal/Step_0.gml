delete_timer += 1;
delay_timer +=1
if(delete_timer > 89) {

instance_create_layer(warning_x,warning_y,"Projectiles",missile_explosion)
with(missile_explosion)
	active_timer = other.explosion_active_frames;
instance_destroy();	
}


if(delay_timer > delay_time) {
path_speed = pathSpeed;	
}