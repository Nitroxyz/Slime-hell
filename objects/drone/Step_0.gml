/// @description Insert description here
// You can write your code in this editor
	
	if(pewpewable == true && instance_exists(bob)) {
		pewtimer += 1;
		
		//set shot speed here
		if(pewtimer > 19 && y < 1036) {
		the_bullet  = instance_create_layer(x, y + 64, "Projectiles", bullet);
	
		the_bullet.pewpew(bob, 12, path_action_continue, false);
		pewtimer = 0;
		}
	}