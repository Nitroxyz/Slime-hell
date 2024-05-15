///@desc sets timeline back to 1 if not ready, otherwize and starts the major

//can create a situation where all slors are no longer full but segment is still busy
//obviously you fucking retard


	if(major_segment_name.is_simul) {
		timeline_position = 1;
	}
	else {
		major_segment_name.callmajor();	
	}