

//a simple timer is used since not much is going on.
//the x dissapearing will be synced with when the missiles shadow appears, not when the missile hits the ground
//this means more telegraphing.
timer += 1;
if(timer > 134) {
instance_destroy();	
}