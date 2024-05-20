event_inherited();

left_side = true;

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
	if(BossCTRL.phase == 0) {
	show_debug_message("Lcannon is simulling all over the place"); // uwu
	
	//sets is_simul to true immediately
	is_simul = true;
	
	// Selects the region attack
	#region
	var simul;
	// however, if the mirror segment is already doing a simul, it will be overridden to the other one
	// Checking for the other simul by checking what it's timeline index is set to
	// if neither are true, uses the randomly generated number
	switch(Rcannon.timeline_index){
		case missile_simul1_tl:
			simul = 2;
			break;
		case missile_simul2_tl:
			simul = 1;
			break;
		default: // When it's empty
			simul = choose(1, 2);
	}
	show_debug_message(simul);
	
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
	#endregion
}
}