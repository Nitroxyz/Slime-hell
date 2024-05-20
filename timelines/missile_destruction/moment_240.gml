///@description starts fillscreen looping/main barrage and moves the segments to block the top of the screen and spawns the invisible death barrier.


with (Missile_EventCTRL) {
	alarm[0] = 1;
	//ten seconds
	alarm[1] = 100;
	alarm[2] = 20;
}
with(system_disco_floor){
	alarm[0] = -1;
	event_perform(ev_alarm, 1);
	tile_cap = 66;
}

with(Lspawner) {
y = 336;	
}
with(Rspawner) {
y = 336;	
}
with(Lcannon) {
y = 336;	
}
with(Rcannon) {
y = 336;	
}
with(Lhand) {
	x = 272;
	y = 588;
}
with(Rhand) {
	x = 1664;
	y = 588;
}
with(daddy_noneya_segment) {
	full_reveal = true;
}
instance_create_layer(960,394,"Layer9",OBjecT999)
/*
planning out timeline for the event

things that need to happen

each step means things that happen in the same timeline moment

Step 1: 
	fillscreen - done
	
	
step 2: 
	spawn missiles on the color-indicated tiles
		should probably happen on an alarm
			reuse alarm[0]?
			
		randomizer can be done later
		rework the tile randomizer to prevent undodgeable patterns
			organize the tiles into two rows of 7 and 6
			3/7 and 3/6 will be danger tiles
			which means ONE SIDE WILL BE EASIER BECUASE IT S+ISDN  FUCKMGNAINBWFGANGnm
			
		
	implement the special attacks
		should happen on an alarm, seperate from the other two
		
	stop 
	
	
step 3:
	the event will start getting harder
		rows and edges will start becoming all danger
		(the field will get smaller)
		
	