/// @desc End of destruction event

//waits until all esimuls have ended to end the event
if(esimul_active) {
	timeline_position = 3590;
	esimul_reset = false;
} else {
	alarm[0] = -1;
/*
with(BossCTRL) {
	phase += 1;
	phaseupdate();
}
*/
with(system_disco_floor){
	alarm[0] = 60;
	alarm[1] = -1;
}
with(Lspawner) {
y = 192;	
}
with(Rspawner) {
y = 192;	
}
with(Lcannon) {
y = 272;	
}
with(Rcannon) {
y = 272;	
}
with(Lhand) {
	x = (960 - 770);
	y = 448;
}
with(Rhand) {
	x = (960 + 770);
	y = 448;
}
instance_destroy(system_the_darkness_is_coming);

phaseset(2);
publicphaseupdate();
}