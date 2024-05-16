/// @description Insert description here
// You can write your code in this editor

timer += 1;

if(timer > 59 && timer < 89) {
	sprite_index = missile_shadow;
	opacity += 0.05;
	image_alpha = opacity;



}
if(timer > 89) {
	
	instance_destroy();	
	sprite_delete(missile_shadow);
}