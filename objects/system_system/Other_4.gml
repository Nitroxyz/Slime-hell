/// @description Insert description here

// Create all the systems

if(Room1){
	disco_floor = instance_create_layer(0, 0, "System", system_disco_floor)
	darkness = instance_create_layer(0, 0, "System", system_the_darkness_is_coming);
	boss = instance_create_layer(0, 0, "System", BossCTRL);
}