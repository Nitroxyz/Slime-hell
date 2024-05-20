event_inherited()
state = 3;
left_side = false;

//set incase the hand was hopping during restart
sprite_index = 	spr_HandR;

callmajor = function() {
	
}

moveup = function() {
	//this will eventually make it fly over from wherever it is, for now it tps
	//Rhand.y = 240;
	//Rhand.x = 1660;
	
}

callsimul =  function() {
	is_simul = true;
	Rhand.x -= 100;
}