/// @description 

paused = false;
paused_surf = -1;

pause = function(){
	paused = !paused;
	if(!paused){
		instance_activate_all();
		surface_free(paused_surf);
		paused_surf = -1;
	}
}