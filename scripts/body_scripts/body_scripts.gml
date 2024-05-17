

//using the noun form of spawn btw
//this attack would probably look a lot better if the player was prevented from going above the boss.
function quadrantspawner(quadrant, spawn) {
	switch(quadrant) {
		case 0:
			instance_create_layer(480,270,"Floor",spawn)
			break;
		case 1:
			instance_create_layer(1440,270,"Floor",spawn)
			break;
		case 2:
			instance_create_layer(480,810,"Floor",spawn)
			break
		case 3:
			instance_create_layer(1440,810,"Floor",spawn)
			break;
	}
}