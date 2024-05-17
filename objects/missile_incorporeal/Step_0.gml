delete_timer += 1;
delay_timer +=1
if(delete_timer > 89) {
instance_destroy();	
instance_create_layer(warning_x,warning_y,"projectiles",missile_explosion)
//spawn the explosion here
}
if(delay_timer > delay_time) {
path_speed = pathSpeed;	
}