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