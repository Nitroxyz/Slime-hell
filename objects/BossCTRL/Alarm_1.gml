/// @description Missile Major alarm

	//major ending routine, modified to remotely set the segments.
	with(Lcannon)
		is_major = false;
	with(Rcannon)
		is_major = false;	
	BossCTRL.alarm[0] = 300;