/// @description Insert description here
// You can write your code in this editor


if(is_major == true && BossCTRL.remaining_missiles == 0) {
	with(BossCTRL)
		remaining_missiles = 12;
		
	timeline_index = missile_major_tl;
	timeline_running = true;
	timeline_speed = 1;
	timeline_position = 0;
	timeline_loop = false;
}