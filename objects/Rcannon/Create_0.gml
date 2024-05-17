event_inherited()

left_side = false;

callmajor = function() {

	is_major = true;
	
	with(BossCTRL) {
		//the total duration of the major will be controlled with a seperate alarm, since the timeline will be reset whenever new missiles need to be spawned.
		alarm_set(1,750);
	}
	
	timeline_index = missile_major_tl;
	timeline_running = true;
	timeline_speed = 1;
	timeline_position = 0;
	timeline_loop = false;	
}

callsimul =  function() {
	//sets is_simul to true immediately
	is_simul = true;
	//call countsimul
	BossCTRL.countsimuls()
	
	//by default, the simul will be chosen randomly
	var simul = irandom(1) + 1;
	//however, if the mirror segment is already doing a simul, it will be overridden to the other one
	//Checking for the other simul by checking what it's timeline index is set to
	if(Rcannon.timeline_index == missile_simul1_tl) {
		simul = 2;
	} else if(Rcannon.timeline_index == missile_simul2_tl) {
		simul = 1;
	}
	
		//now chooses the simul
	switch(simul) {
		case 1:
			timeline_index = missile_simul1_tl
			timeline_running = true;
			timeline_speed = 1;
			//random delay so that they arent all starting at the same time
			timeline_position = irandom_range(-120,0);
			timeline_loop = false;
			break;
			
			
		case 2:
			timeline_index = missile_simul2_tl
			timeline_running = true;
			timeline_speed = 1;
			//random delay so that they arent all starting at the same time
			timeline_position = irandom_range(-120,0);
			timeline_loop = false;
			break;
	}
}