//Key detection system
#region
key_left = keyboard_check( ord("K") );
key_right = keyboard_check( 192 );
key_up = keyboard_check( ord("O") );
key_down = keyboard_check( ord("L") );

//weapon_0_key = keyboard_check( ord("M") );
//weapon_1_key = keyboard_check( ord("J") );


// For others
key_left = key_left || keyboard_check( ord("A") );
key_right = key_right || keyboard_check( ord("D") );
key_up = key_up || keyboard_check( ord("W") );
key_down = key_down || keyboard_check( ord("S") );

//weapon_0_key = weapon_0_key || keyboard_check( ord("Q") );
//weapon_1_key = weapon_1_key || keyboard_check( ord("E") );

shoot_key = mouse_check_button(mb_left);
tap_key = mouse_check_button_pressed(mb_left);
dash_key = mouse_check_button_pressed(mb_right);
#endregion

// Movement
#region
//direction calculation
var move_h = key_right - key_left;
var move_v = key_down - key_up;
direction = point_direction(0, 0, move_h, move_v);

// get the x/y speeds
var input_level = point_distance(0, 0, move_h, move_v);
input_level = clamp(input_level, 0, 1);
speed = max_spedd * input_level;
#endregion

// dashing 
#region
if(dash_key){
	dash(mouse_x, mouse_y);
}
// Dash movement
if(dashing){
	move_towards_point(mouse_x, mouse_y, dash_distance/18);
	dash_step++;
}
if(dash_step > 18){
	dashing = false;
	dash_step = 0;
	speed = 0;
}
#endregion

//Animation
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