/// @description loops the missile border
//makes a solid border by dropping missiles that are active for 20 frames every 20 frames.

//fun fact: the missile border drops eleven missiles on each side.
//this means the dancefloor has finally reached the unholy trifecta of shitty fucking numbers: 7, 11 and 13
	
	//left side
	dropone(320,448,20)
	dropone(320,512,20)
	dropone(320,576,20)
	dropone(320,640,20)
	dropone(320,704,20)
	dropone(320,768,20)
	dropone(320,832,20)
	dropone(320,896,20)
	dropone(320,960,20)
	dropone(320,1024,20)
	dropone(320,1079,20)
	
	//right side
	dropone(1600,448,20)
	dropone(1600,512,20)
	dropone(1600,576,20)
	dropone(1600,640,20)
	dropone(1600,704,20)
	dropone(1600,768,20)
	dropone(1600,832,20)
	dropone(1600,896,20)
	dropone(1600,960,20)
	dropone(1600,1024,20)
	dropone(1600,1079,20)
	
	alarm[2] = 20;