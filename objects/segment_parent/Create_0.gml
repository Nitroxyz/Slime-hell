//Instance Variables

//Each segment will have 3 states: Body (0), Solo (1) and Dead (2) (maybe a bonus state at the end idk)
//since the head only becomes active part way through the fight, it will have a 3 state until it becomes real
state = 0;

//the number of remaining segments needs to be kept track of in order to set the bounds of random calls.
remaining_segments = 6;

//the is major of the specific segment that is doing a major will be set to true during the major
is_major = false;

// Saves the current timeline state
timeline_active = timeline_running;

// Callback for his major
callmajor = function(){
}

// Callback for his simul
callsimul = function(){
}

pause = function(){
	timeline_active = timeline_running;
	timeline_running = false;
}

unpause = function(){
	timeline_running = timeline_active;
}