//randomizes the randomness
randomize();

simuls_init = false
//-1 by default, otherwise set to whichever segment is currently doing the thing.
major_segment = -1;


//Alarm 0 is the timer for the next major to start after the prev major ends.
alarm_set(0,120);

//spawning head
head_segment = instance_create_layer(960, 224, "BossLayer", MidSegment);

//spawning left segments
missile_left = instance_create_layer(512, 272, "BossLayer", Lcannon);
spawner_left = instance_create_layer(660, 192, "BossLayer", Lspawner);
hand_left = instance_create_layer(320, 448, "BossLayer", Lhand);

//spawning right segments
missile_right = instance_create_layer(1408, 272, "BossLayer", Rcannon);
spawner_right = instance_create_layer(1260, 192, "BossLayer", Rspawner);
hand_right = instance_create_layer(1600, 448, "BossLayer", Rhand);



buildarray = function(num_segments) {
	//in order to iterate through all the different names, im going to iterate through an array of names.
	var segment_names = [ missile_left, missile_right, spawner_left, spawner_right, hand_left, hand_right, head_segment];
	
	//enters the segments into the array if they aren't doing a simul or major (or dead/inactive).
	for( var i = build_checkpoint + skipped_segments; i < 7; i++) {
		if(segment_names[i].is_simul == false && segment_names[i].is_major == false && segment_names[i].state < 2) {
			build_checkpoint += 1;
			show_debug_message(build_checkpoint);
			show_debug_message(skipped_segments);
			return segment_names[i];
		}
		else {
			skipped_segments += 1;
		}
	}
}

startsimul = function() {
	//prevents the loop from checking the same entry twice
	build_checkpoint = 0;
	//keeps track of each time an entry has been skipped (due to being 
	skipped_segments = 0;
	
	simul_array = array_create_ext(active_segments - num_simul - ongoing_major,buildarray);
	
	var simul_num = irandom_range(0,array_length(simul_array) - 1);
	show_debug_message("simul_num");
	show_debug_message(simul_num);
	var simul_segment = array_get(simul_array,simul_num);
	simul_segment.callsimul();
	delete simul_array;
	//show_debug_message(simul_array[0]);
	//show_debug_message(simul_array[1]);
	//show_debug_message(simul_array[2]);
	//show_debug_message(simul_array[3]);
}


countsimuls = function() {
	show_debug_message("starting countsimuls");
	num_simul = missile_left.is_simul + missile_right.is_simul + spawner_right.is_simul + spawner_left.is_simul + hand_left.is_simul + hand_right.is_simul + head_segment.is_simul;
	show_debug_message(num_simul);
	if(ongoing_major == true) {
		if(num_simul < 2) {
			startsimul();
		}
	}
	else if(num_simul < 4) {
		startsimul();
	}

}








