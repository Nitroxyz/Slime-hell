/// @description Missile Major alarm

	//major ending routine, modified to remotely set the segments.
	with(Lcannon)
		is_major = false;
	with(Rcannon)
		is_major = false;	
	if(BossCTRL.ongoing_event = true) {
		pause_simul = true;
	} else {
		BossCTRL.alarm[0] = 300;
	}