/// @description Insert description here
// You can write your code in this editor

if(image_index == 1){
	if(image_alpha > 0){
		image_alpha -= 0.02;
	} else {
		room_goto(Room1);
	}
}