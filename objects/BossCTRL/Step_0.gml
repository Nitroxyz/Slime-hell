//simultaneouses should be implemented here

//delay before starting the first simul
var init_timer = 0;

//calling the first simul
if(simuls_init == false && init_timer < 240) {
countsimuls();
simuls_init = true;
}
else if(init_timer < 120) {
	init_timer += 1;
}

//add a failsafe?

// Setup a proper pause_simul
#region
//Shuts down all the timelines (reset when unpaused)
if(change_pause_simul){
	pause_simul = !pause_simul
	if(pause_simul){
		with(segment_parent){
			pause();
		}
	} else {
		with(segment_parent){
			unpause();
		}
	}
	change_pause_simul = false;
}
// Pauses the alarms
if(pause_simul){
	alarm[0]++;
	alarm[1]++;
}
#endregion