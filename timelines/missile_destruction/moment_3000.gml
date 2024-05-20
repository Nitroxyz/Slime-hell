///@desc the final barrage

if(esimul_active) {
	timeline_position = 2990;
	esimul_reset = false;
} else {
	esimul_reset = false;
	alarm[1] = -1;
	alarm[0] = -1;
	with(system_disco_floor) {
	final_barrage = true;
	tile_cap = 100;
	}
	//system_the_darkness_is_coming.set_rectangle(0, 440, 1920, 1080);
}