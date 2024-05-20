/// @description this controls the "event simuls"

//this will be a lot more straightforward than simuls because only one can play at a time

//cases are structured so that spawner simuls are much more likely, because hand simuls are much longer
event_simul = irandom(2);
//event_simul = 2;
switch(event_simul) {
	//drones moving sideways to the right
	case 0:
		with(Lspawner){
			timeline_index = drone_left_tl;
			timeline_running = true;
			timeline_speed = 1;
			timeline_position = 0;
			timeline_loop = false;
			other.esimul_active = true;
		}
		break;
	//drones moving sideways to the left
	case 1:
			with(Rspawner){
			timeline_index = drone_right_tl;
			timeline_running = true;
			timeline_speed = 1;
			timeline_position = 0;
			timeline_loop = false;
			other.esimul_active = true;
		}
		break;
	//hands being awesome
	case 2:
			with(Lhand) {
			timeline_index = hand_left_tl;
			timeline_running = true;
			timeline_speed = 1;
			timeline_position = 0;
			timeline_loop = false;
			other.esimul_active = true;
			}
		break;
	case 3:
			with(Rhand) {
			timeline_index = hand_right_tl;
			timeline_running = true;
			timeline_speed = 1;
			timeline_position = 0;
			timeline_loop = false;	
			}
		break;
	
	//body does something?
	//case 4:
}
