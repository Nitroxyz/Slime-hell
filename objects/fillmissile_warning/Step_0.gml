/// @description Insert description here
// You can write your code in this editor

ttimer += 1;

if(BossCTRL.ongoing_event == true) {
	depth = 399;
} else {
	depth = 1300;
}

if(ttimer > 59 && ttimer < 89) {
	sprite_index = missile_shadow;
	opacity += 0.05;
	image_alpha = opacity;



}
if(ttimer > 89) {
	
	instance_destroy();	
	sprite_delete(missile_shadow);
}