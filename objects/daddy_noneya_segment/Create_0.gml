//Instance Variables

// Its only in your head
// Realitve state to the 
/* Each segment will have 3 states = {
0: Body (Connected), 
1: Solo (Independent),
2: Dead (Dead congrats lies) (maybe a bonus state at the end idk)
3: Getting freaky
}
*/
damage_dealing_state = true;

//since the head only becomes active part way through the fight, it will have a 3 state until it becomes real
state = 0;

// Tracks the number of remaining segments to set bounds for random calls.
remaining_segments = 6;

// Set 'is_major' to true for the segment performing the major operation.
is_major = false;

// Right segments are mirrored
left_side = false;

// Saves the current timeline state
timeline_active = timeline_running;

// Changes after the opening cutscene
revealed = true;

// If true, is fully  shown (for the missile destruction event and reveals)
full_reveal = false;

// Callback for his major (OVERWRITE)
abstract_callmajor = function(){
}

// Callback for his simul (OVERWRITE)
abstract_callsimul = function(){
}

pause = function(){
	timeline_active = timeline_running;
	timeline_running = false;
}

unpause = function(){
	timeline_running = timeline_active;
}