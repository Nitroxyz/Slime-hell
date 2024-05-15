event_inherited()

left_side = false;
callmajor = function() {
	





}

callsimul =  function() {
	show_debug_message("Rcannon is simulling all over the place");
	//sets is_simul to true immediately
	is_simul = true;
	//call countsimul
	BossCTRL.countsimuls()
	
	timeline_index = missile_simul1_tl
	timeline_running = true;
	timeline_speed = 1;
	//random delay so that they arent all starting at the same time
	timeline_position = irandom_range(-120,0);
	timeline_loop = false;
	
}