// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//Doesnt work yet!
function drone_major1(){
	if(BossCTRL.path_flipped) {
		drone5 = instance_create_layer(1260, 192, "BossLayer", drone);
		drone5.startpath(spawnPath5, 8, path_action_stop, false);
	
	}
	else {
	drone5 = instance_create_layer(660, 192, "BossLayer", drone);
	drone5.startpath(spawnPath5, 8, path_action_stop, false);
	}
}

// Doesnt work yet!
function drone_major2(){
	//finally, make the drones start returning
	if(instance_exists(drone1))
	with(drone1){
		startpath(spawnPath1,8,path_action_stop,false);
	}
}