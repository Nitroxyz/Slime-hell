/// @description Insert description here
// You can write your code in this editor
if(simuls_init)
countsimuls();
if(keyboard_check(vk_f2)){
	missile_left.sprite_index = spr_missile_ultimate_attack;
} else {
	missile_left.sprite_index = spr_left_cannon;
}