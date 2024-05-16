/// @description Insert description here
// You can write your code in this editor
if(counter < 2){
	counter++;
} else if(image_yscale > 0.25){
	image_yscale -= 0.25;
	counter = 0;
} else {
	instance_destroy();
}