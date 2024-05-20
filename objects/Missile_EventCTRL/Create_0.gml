/// @description Insert description here
// You can write your code in this edito
	show_debug_message("starting the timeline");
	with(Missile_EventCTRL) {
	timeline_index = missile_destruction;
	timeline_running = true;
	timeline_speed = 1;
	timeline_position = 0;
	timeline_loop = false;
	
	esimul_active = false;
	
	//controls if simuls are able to be reset
	esimul_reset = true;
	}