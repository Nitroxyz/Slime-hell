/// @description hopping during m event simul 

if(hopready == true) {
	switch(hopgrid_x) {
		//hand starting position, where it can only jump to the left.
		case -1:
			//hops, resets alarm and hopready
			startpath(meventhopStart, 5, path_action_stop, false);	
			hopgrid_x +=1;
			hopready = false;
			alarm[1] = 48;
			 break;
		//the normal case.
		case 0:
		case 1:
		case 2:
		case 3:
		case 4:
		case 5:
			//a y greater than 2 means the hand is off the bottom of the stage. end the simul.
			if(hopgrid_y > 2) {
				msimulend();
				
			} else {
				//chooses the hop direction
				//weighted towards downwards movement to prevent really long simuls.
				var hopdir = irandom(2);
				//does the thing
				if(hopdir == 0) {
					
					handhop(false);	
				} else {
					//set to false if I'm testing side exit behavior
					handhop(true);	
				}
				//resets the alarm and hopready
				alarm[1] = 48;
				hopready = false;
			}
			break;
		//if case is 6, hand is off the left side of the stage. end the simul.
		case 6:
			msimulend();
		
	}
	
	
	
} else {
	hopready = true;
	//set up x and y check
	alarm[1] = 48;
	
}