/// @description 

// Only see the cutscene once per boot-up
cutscene_seen = false;

// Create all the other systems
//disco_floor = instance_create_layer(0, 0, "System", system_disco_floor)7
//darkness = instance_create_layer(0, 0, "System", system_the_darkness_is_coming);
controlls = instance_create_layer(0, 0, "System", system_pause_restart);
boss = -1;

/*
	timeline_index = missile_destruction;
	timeline_running = true;
	timeline_speed = 1;
	timeline_position = irandom_range(-120,0);
	timeline_loop = false;
/*
