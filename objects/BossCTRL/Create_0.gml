//randomizes the randomness
randomize();

// Don't change! allows for the change of pause to be checked
pause_simul = false;

// TODO on the cutting board
#region
// Setting this to true initiates a pause
//change_pause_simul = false;
//simuls_init = false;
#endregion

//-1 by default, otherwise set to whichever segment is currently doing the thing.
major_segment = -1;

//things for the missile major
remaining_missiles = 0;

// Number of active simuls
num_simul = 0;

// Number of active Segments
active_segments = 0;

// Number of ongoing major
ongoing_major = false;

//Alarm 0 is the timer for the next major to start after the prev major ends.
if(!pause_simul){
alarm[0] = 120;
alarm[1] = -1;
alarm[2] = 240; // Simuls init
}

// Spawns the segments
#region
var middle = room_width/2;
var spawner_xoffset = 300;
var missle_xoffset = 500;
var hand_offset = 770;
//spawning head
head_segment = instance_create_layer(middle, 224, "BossLayer", MidSegment);

//spawning left segments
missile_left = instance_create_layer(middle - missle_xoffset, 272, "BossLayer", Lcannon);
spawner_left = instance_create_layer(middle - spawner_xoffset, 192, "BossLayer", Lspawner);
hand_left = instance_create_layer(middle - hand_offset, 448, "BossLayer", Lhand);

//spawning right segments
missile_right = instance_create_layer(middle + missle_xoffset, 272, "BossLayer", Rcannon);
spawner_right = instance_create_layer(middle + spawner_xoffset, 192, "BossLayer", Rspawner);
hand_right = instance_create_layer(middle + hand_offset, 448, "BossLayer", Rhand);

segments = [missile_left, missile_right, spawner_left, spawner_right, hand_left, hand_right, head_segment];
#endregion

//below are the threee funcitons that control simultaneous attacks.
//if you want to learn how they work, I recommend reading them in reverse order, as that is the order they will actually be called
//if you want to start a simultaneous, ALWAYS call countsimuls first. the other parts rely on the calculations done there.
//(they are in the wrong order because I was having a bug with the return instruction and got very confused)

//Name isnt very descriptive and I should probably change it.
countsimuls = function() {
	
	// It coutts things
	#region
	//Resets the counters
	var num_simul = 0; //first it counts the number of simuls
	active_segments = 0;
	ongoing_major = false;
	
	// Loops through segments jusz in cade wr ness it
	for(var i = 0; i < array_length(segments); i++){
		if(!instance_exists(segments[i])){
			array_delete(segments, i, 1);
		}
	}
	
	with(daddy_noneya_segment){
		other.num_simul += is_simul;
		other.active_segments += (state < 2);
		if(is_major){
			other.ongoing_major = true;
		}
	}
	#endregion
	
	// Boot up simuls, if not enough are active
	#region
	//override for other simul checks
	// TODO simuls wont be able to start while an event is waiting to start or ongoing
	//--- VERY IMPORTANT --- make sure to call countsimuls after unpausing, otherwise you may create a situation where simuls will stop playing forever.
	if(!pause_simul) {
	//then it uses whether or not a major is going on to determine whether or not the maximum number of simuls are already playing
		
		// When major is active 
		var max_simuls = (ongoing_major) ? 3 : 4;
		for(var i = num_simul; i < max_simuls; i++){
			startsimul();
		}
	}
	#endregion
}

// Start simul
startsimul = function() {
	//tracking variables are reset each time an array needs to be constructed.
	
	//var simul_array = array_create(active_segments - num_simul - ongoing_major);
	var simul_array = [];
	
	for( var i = 0; i < array_length(segments); i++) {
		
		//this is where the segment is determined to be available
		/* a segment is available if: 
		- they are not doing a simul 
		- they are not doing a major
		- they are not dead/inactive (state < 2) 
		*/
		var segment = segments[i];
		if(segment.is_simul == false and segment.is_major == false and segment.state < 2) {
			array_push(simul_array, segments[i]);
		}
	}
	
	//using the constructed array, pick a random segment
	if(array_length(simul_array) > 0){
		var simul_rand = irandom(array_length(simul_array) - 1);
		var simul_segment = simul_array[simul_rand];
		//finally, start the simultaneous attack.
		simul_segment.callsimul();
	} else {
		// for brakes
	}	
}