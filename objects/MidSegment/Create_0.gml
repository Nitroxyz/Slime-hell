event_inherited()

state = 3;

callmajor = function() {
	MidSegment.x -= 100;
}

callsimul =  function() {
	
	show_debug_message("MidSegment is simulling all over the place");
	//The standard simul starting routine.
	is_simul = true;
	
	timeline_index = body_simul1_tl;
	timeline_running = true;
	timeline_speed = 1;
	timeline_position = irandom_range(-120,0);
	timeline_loop = false;
	
}