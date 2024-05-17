// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function majorhoming() {
	var homing_missile = instance_create_layer(x, y + 64, "Projectiles", missile_real);
	//homing_missile.homing = true;
	with(homing_missile){
		homing = true;
		major_missile = true;
	}
}

function simul2pew(missile){
	if(instance_exists(missile)) {
		missile.bigpew(20, path_action_continue, false);
	}
}