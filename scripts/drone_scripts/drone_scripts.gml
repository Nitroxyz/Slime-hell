// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//Doesnt work yet!
// Are any of the paths from an object?
function major1pathing(thedrone,thepath,spd){
		thedrone.startpath(thepath, spd, path_action_stop, false);
}

// Doesnt work yet!
function drone_major2(t_drone){
	//finally, make the drones start returning
	if(instance_exists(t_drone)){
		with(t_drone){
			startpath(spawnPath1,8,path_action_stop,false);
		}
	}
}