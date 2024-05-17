//randomizes the randomness
randomize();

// Don't change! allows for the change of pause to be checked
pause_simul = false;
// Setting this to true initiates a pause
change_pause_simul = false;

simuls_init = false;
//-1 by default, otherwise set to whichever segment is currently doing the thing.
major_segment = -1;

//things for the missile major
remaining_missiles = 0;
alarm_set(1,-1);



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


//below are the threee funcitons that control simultaneous attacks.
//if you want to learn how they work, I recommend reading them in reverse order, as that is the order they will actually be called
//if you want to start a simultaneous, ALWAYS call countsimuls first. the other parts rely on the calculations done there.
//(they are in the wrong order because I was having a bug with the return instruction and got very confused)


//if I had known how array_create_ext worked initially I could have implemented this a bit cleaner, but there isn't anything inherently buggy about this implementation.
buildarray = function() {
	//in order to iterate through all the different names, im going to iterate through an array of names.
	var segment_names = [ missile_left, missile_right, spawner_left, spawner_right, hand_left, hand_right, head_segment];
	
	for( var i = build_checkpoint + skipped_segments; i < 7; i++) {
		
		//this is where the segment is determined to be available
		//a segment is available if they aren't doing a simul or major already,and arent dead/inactive.
		if(segment_names[i].is_simul == false && segment_names[i].is_major == false && segment_names[i].state < 2) {

			//the loop works by keeping track of the number of skipped segments and the number of added segments, then adding them to the starting value for that iteration of the loop.
			build_checkpoint += 1;
			//show_debug_message(build_checkpoint);
			//show_debug_message(skipped_segments);
			return segment_names[i];
		}
		else {
			skipped_segments += 1;
		}
	}
}

//Now that we have determined that a simul can be started, we need to determine which segment will start the simul.
startsimul = function() {
	//tracking variables are reset each time an array needs to be constructed.
	build_checkpoint = 0;
	skipped_segments = 0;
	
	//how array_create_ext works is it runs whatever function you want, getting one value at a time, and looping until every value in the array is filled.
	var simul_array = array_create_ext(active_segments - num_simul - ongoing_major, buildarray);
	
	//using the constructed array, pick a random segment
	var simul_num = irandom_range(0,array_length(simul_array) - 1);
	//var simul_segment = array_get(simul_array,simul_num);
	var simul_segment = simul_array[simul_num];
	
	
	//finally, start the simultaneous attack.
	simul_segment.callsimul();
}

//Name isnt very descriptive and I should probably change it.
countsimuls = function() {
	//first it counts the number of simuls
	num_simul = missile_left.is_simul + missile_right.is_simul + spawner_right.is_simul + spawner_left.is_simul + hand_left.is_simul + hand_right.is_simul + head_segment.is_simul;
	//show_debug_message(num_simul);
	
	active_segments = ( missile_left.state < 2) + (missile_right.state < 2) + (spawner_right.state < 2) + (spawner_left.state < 2) + (hand_left.state < 2) + (hand_right.state < 2) + (head_segment.state < 2);
	
	//then it determines whether or not a major is happening
	ongoing_major = (0 < missile_left.is_major + missile_right.is_major + spawner_right.is_major + spawner_left.is_major + hand_left.is_major + hand_right.is_major + head_segment.is_major);
	
	//override for other simul checks
	//simuls wont be able to start while an event is waiting to start or ongoing
	//--- VERY IMPORTANT --- make sure to call countsimuls after unpausing, otherwise you may create a situation where simuls will stop playing forever.
	if(!pause_simul) {
	//then it uses whether or not a major is going on to determine whether or not the maximum number of simuls are already playing
		if(ongoing_major == true) {
			if(num_simul < 3) {
				//if everything is good to go, start the simul.
				startsimul();
			}
		}
		else if(num_simul < 4) {
			//if everything is good to go, start the simul.
			startsimul();
		}
	}

}






