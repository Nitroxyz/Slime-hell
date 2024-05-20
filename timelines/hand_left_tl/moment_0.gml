///@desc hand follows initial path onto stage
//I don't think this even needs to be a timeline
//this definetly should not be a timeline

with(Lhand) {
	//this attack can be a maximum of 20 seconds long
	//lol
	sprite_index = spr_Lhandspinny;
	alarm[1] = 48;
}


//with hand left, change sprite, start jump alarm

//with thedarknessiswhateverthefuck, set drawing to true

/*
CALCULATING HOW LONG IT TAKES HAND TO SPIN
10 fps = 1 frame per 6 steps
animation is 8 frames long
8 * 6 = 48 steps long

hand needs to take exactly 48 steps to finish the path
path_speed = length of path in pixels /48?
paths need to be multiples of 48 long
hand heights are 588, 780, 972
vertical path is 192 tall
192/48 = a vertical speed of 4.
ok so its kind of unbelievable but the vertical and horizontal movement being the exact same number is a complete coincedence. I calculated what the projected distance should be seperately and they somehow worked out to the same number
horizontal path is 192 wide
192/48 = a horizontal speed of 4
*/
