event_inherited()

callmajor = function() {
	





}

callsimul =  function() {
	
	//sets is_simul to true immediately
	is_simul = true;

	//call countsimul
	BossCTRL.countsimuls()
	timeline_index = missile_simul1_tl
	timeline_running = true;
	timeline_speed = 1;
	//random delay so that they arent all starting at the same time
	timeline_position = irandom_range(-180,0);
	timeline_loop = false;
	
}