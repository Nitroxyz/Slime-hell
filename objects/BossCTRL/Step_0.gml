//simultaneouses should be implemented here

//delay before starting the first simul
var init_timer = 0;

//calling the first simul
if(simuls_init == false && init_timer < 120) {
countsimuls();
simuls_init = true;
}
else if(init_timer < 120) {
	init_timer += 1;
}

//will be using missile_simul1 since its the only one implemented

/*
CONDITIONS FOR STARTING A SIMULTANEOUS

1. can a simultaneous be called?
	
	Are there too many simuls playing?
		
		add a function to count the number of simuls playing. (checking each segment's is_simul)
		this funciton will be called whenever a simul starts or ends
		once it counts the number of simuls, it will then decide whether or not to start a new simul
		if ongoing_major == true, 
		if num_simuls < 2
		else
		if num_simuls < 5
		
		
		if either returns true, call the function described in the next section
	


	Is the segment already doing a simul?
	
		whenever it is time for a simultaneous, a function will be called to create an array of all the 
		available segments. it will do this by checking the is_major and is_simul of each segment.
	
		then the segment to do the simultaneous will be selected from this array, its callsimul will be simul called, and the array will be deleted.
		the callsimul will have a random delay so the simuls dont start at the same time or start as soon as another ends. 
		However, the is_simul will be set to true before the random delay is up.
		
	Is a destruction event ongoing?
	
	event_waiting will be set to true once it is time for a destruction event to play
	while event_waiting is true, simuls will not be called.
	since simuls are only called when another simul starts or ends, I wont need to set them 
	to not spawn during events.
	
	once the event ends a simul will be called to start the cycle anew.

conditions are far too complex for a timeline
add a failsafe?
*/