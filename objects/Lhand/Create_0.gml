event_inherited()
state = 3;

left_side = true;

callmajor = function() {
	
}

moveup = function() {
	//this will eventually make it fly over from wherever it is, for now it tps
	Lhand.y = 240;
	Lhand.x = 260;
	
}

callsimul =  function() {
	Lhand.x -= 100;
}