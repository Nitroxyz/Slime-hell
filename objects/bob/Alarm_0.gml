/// @description mr_freeze; activate freeze
// You can write your code in this editor

fire_meter = 0;
is_burning = false;
move_lock = false;
freezing = false;
freeze_meter = 0;
freeze_full = false;
var ice_bomb = instance_create_layer(x, y, "SlimeTrailIce", ice_trail);
with(ice_bomb){
	while(place_meeting(x, y, daddy_noneya_projectile)){
		var inst = instance_place(x, y, daddy_noneya_projectile);
		instance_destroy(inst);
	}
}
var big_scale = 2.5
image_xscale *= big_scale;
image_yscale *= big_scale;
while(place_meeting(x, y, fire_trail)){
	var inst = instance_place(x, y, fire_trail);
	instance_destroy(inst);
}
image_xscale /= big_scale;
image_yscale /= big_scale;