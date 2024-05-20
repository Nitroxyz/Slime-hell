/// @description Insert description here
// You can write your code in this editor

active_time += 1;

//Ik 6 frames is very short but like the thing I hate most in games is explosions that are too active
if(active_time > active_timer)
	instance_destroy();