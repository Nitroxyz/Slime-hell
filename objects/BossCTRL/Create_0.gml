//randomizes the randomness
randomize();

phase = 0;


pause_simul = false;

simuls_init = false;

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
alarm[0] = 300;
alarm[1] = -1;
alarm[2] = 120; // Simuls init 120
//actual value alarm[3] = 3600;
alarm[3] = 3600;
}
alarm[6] = 1;
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
	num_simul = 0; //first it counts the number of simuls
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
	
	//then it uses whether or not a major is going on to determine whether or not the maximum number of simuls are already playing
	if(!pause_simul) {	
		// When major is active 
		var max_simuls = (ongoing_major) ? 3 : 4;
		for(var i = num_simul; i < max_simuls; i++){

				startsimul();
			}
		}
		
	}
	#endregion
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

phaseupdate = function() {
	if(ongoing_major == false && num_simul == 0) {
		switch (phase) {
			case 0:
				break;
			case 1:
				show_debug_message("spawning eventCTRL");
				instance_create_layer(0,0,"System",Missile_EventCTRL);
				break;
			case 2:
				instance_create_layer(0,0,"System",basedobject);
				ongoing_event = false;
				alarm[3] = -1;
				alarm[0] = 300;
				pause_simuls = false;
				//countsimuls();
				instance_destroy(Missile_EventCTRL);
				//Rcannon.state = 2;
				//Lcannon.state = 2;
				Lhand.state = 0;
				Rhand.state = 0;
				MidSegment.state = 0;
				break;
			default:
		} 	
	
	} else {
			alarm[3] = 5;
	}
}