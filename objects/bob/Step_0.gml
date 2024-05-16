//Key detection system
#region
if(!move_lock){
	key_left = keyboard_check( ord("K") );
	key_right = keyboard_check( 192 );
	key_up = keyboard_check( ord("O") );
	key_down = keyboard_check( ord("L") );
	
	// For others
	key_left = key_left || keyboard_check( ord("A") );
	key_right = key_right || keyboard_check( ord("D") );
	key_up = key_up || keyboard_check( ord("W") );
	key_down = key_down || keyboard_check( ord("S") );

	//shoot_key = mouse_check_button(mb_left);
	//tap_key = mouse_check_button_pressed(mb_left);
	//dash_key = mouse_check_button_pressed(mb_right);
	freeze_key = keyboard_check_pressed(vk_shift);
	//Dash buffer
	if(mouse_check_button_pressed(mb_right)){
		dash_buffer = dash_buffer_time;
	}
	dash_key = dash_buffer > 0;
}
#endregion

// Movement
#region
if(!move_lock){
//direction calculation
var move_h = key_right - key_left;
var move_v = key_down - key_up;
direction = point_direction(0, 0, move_h, move_v);

// get the x/y speeds
var input_level = point_distance(0, 0, move_h, move_v);
input_level = clamp(input_level, 0, 1);
speed = max_spedd * input_level;
} else {
	speed = 0;
}
#endregion

// dashing 
#region
if(dash_key and !move_lock){
	dash(mouse_x, mouse_y);
}
// Dash movement
if(dashing){
	move_towards_point(dash_x, dash_y, dash_distance/18);
	//xspd = lengthdir_x(dash_distance/18, direction);
	//yspd = lengthdir_y(dash_distance/18, direction);
	//for(var i = 0; i < dash_distance/18; i += 50){
	//	instance_create_layer(x + i*xspd/50, y + i*yspd/50, "SlimeTrailFire", fire_trail);
	//}
	instance_create_layer(x, y, "SlimeTrailFire", fire_trail);
	xspd = lengthdir_x(dash_distance/18, direction);
	yspd = lengthdir_y(dash_distance/18, direction);
	instance_create_layer(x + xspd/2, y + yspd/2, "SlimeTrailFire", fire_trail);
	dash_step++;
}
if(dash_step > 18){
	stop_dash();
}
#endregion

// Freezing
#region
if(freeze_key and !move_lock and freeze_full){
	freeze();
}
#endregion

//Animation
#region
if(dashing){
	sprite_index = spr_hot;
} else {
	if(speed > 0){
		sprite_index = spr_tophat;
	} else {
		sprite_index = spr_incomprehensible_gif;
	}
}
if(hspeed != 0){
	image_xscale = sign(hspeed);
}
#endregion

//Taking damage
#region
// Collision for regular projectiles
if(place_meeting(x, y, daddy_noneya_collision)){
	var inst_list = ds_list_create();
	instance_place_list(x, y, daddy_noneya_collision, inst_list, false);
	for(var i = 0; i < ds_list_size(inst_list); i++){
		var inst = ds_list_find_value(inst_list, i);
		if(inst.damage_dealing_state){
			// Trail; immune during freeze, not immune during dash
			if(object_is_ancestor(inst.object_index, daddy_noneya_trail)){
				if(!freezing){
					dying();
				}
			}
			// Overhead; not immune during freeze, immune during dash
			if(object_is_ancestor(inst.object_index, daddy_noneya_overhead)){
				if(!dashing){
					dying();
				}
			}
			// Regular; immune during freeze and dash
			if(object_is_ancestor(inst.object_index, daddy_noneya_projectile)){
				if(!dashing){
					if(!freezing){
						dying();
					} else {
						instance_destroy(inst);
					}
				}
			}
		}
	}
}
// Ice "damage"
if(place_meeting(x, y, ice_trail) and !freezing){
	var inst_list = ds_list_create();
	var num = instance_place_list(x, y, daddy_noneya_collision, inst_list, false);
	repeat(num){
		freeze_meter--;
	}
} else {
	freeze_meter += f_d;
}
freeze_meter = clamp(freeze_meter, 0, freeze_max);
if(freeze_meter = 0){
	freeze_full = false;
}
if(freeze_meter = freeze_max){
	freeze_full = true;
}
#endregion

// Fake end step
#region
if(dash_buffer > 0){
	dash_buffer--;
}
#endregion