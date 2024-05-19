///@desc turn face, start telegraphing

//It takes about 2 seconds to travel half the screen horiz, so I will make the attack take a little longer than that to start
if(instance_exists(bob)) {
	bob_quadrant = 0;
	if(bob.x > room_width/2){
		bob_quadrant += 1;
	}
	if(bob.y > room_height/2){
		bob_quadrant += 2;
	}
}

//quadrantspawner(bob_quadrant,laser_warning);