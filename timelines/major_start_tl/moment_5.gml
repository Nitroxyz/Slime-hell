///@desc sets timeline back to 1 if not ready, otherwize and starts the major




	if(major_segment_name.is_simul) {
		timeline_position = 1;
	}
	else {
		major_segment_name.callmajor();	
		show_debug_message("its majonging time")
	}