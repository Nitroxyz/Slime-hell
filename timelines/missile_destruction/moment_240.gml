///@description starts fillscreen looping/main barrage


with (Missile_EventCTRL) {
	alarm[0] = 1;
}
with(system_disco_floor){
	alarm[0] = -1;
	event_perform(ev_alarm, 1);
}
destr_drop_bomb();
/*
planning out timeline for the event

things that need to happen

each step means things that happen in the same timeline moment

Step 1: 
	fillscreen - done
	
	
step 2: 
	spawn missiles on the color - indicated tiles
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
		
	