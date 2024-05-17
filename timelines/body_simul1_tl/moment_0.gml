///@desc turn face, start telegraphing

//It takes about 2 seconds to travel half the screen horiz, so I will make the attack take a little longer than that to start

if(instance_exists(bob)) {
	if(bob.x > 	960)
		bob_quadrant += 1;
	if(bob.y > 540)
		bob_quadrant += 2;
}

quadrantspawner(bob_quadrant,laser_warning);