//Instance Variables

//Each segment will have 3 states: Body (0), Solo (1) and Dead (2) (maybe a bonus state at the end idk)
//since the head only becomes active part way through the fight, it will have a -1 state until it becomes real
state = 0;

//the number of remaining segments needs to be kept track of in order to set the bounds of random calls.
remaining_segments = 6;

//the is major of the specific segment that is doing a major will be set to true during the major
is_major = false;