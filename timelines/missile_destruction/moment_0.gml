/// @description Start the darkness and make both missles shoot missiles up and move the boss objects to block off the top of the screen and spawn the invisible death barrier
system_the_darkness_is_coming.visible = true;
//ystem_the_darkness_is_coming.set_rectangle(0, 0, room_width, room_height);
system_the_darkness_is_coming.set_rectangle(72, 0, 1858, 1388);
with(system_disco_floor){
	alarm[0] = -1;
}
