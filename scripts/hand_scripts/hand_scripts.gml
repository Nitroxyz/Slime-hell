
function simulhardstart(side){
	if(side = true) {
		with(Lhand) {
			startpath(hardsimulstartL,6, path_action_stop, false)
		}
	} else
		with(Rhand) {
			startpath(hardsimulstartR,6, path_action_stop, false)
		}
}

function simulhardloop(side){
	if(side = true) {
		with(Lhand) {
			startpath(hardsimulloopL,5, path_action_continue, false)
		}
	} else
		with(Rhand) {
			startpath(hardsimulloopR,5, path_action_continue, false)
		}
}

function handpewpew(side) {
	
	var targetx = 0;
	
	if(side = true) {
		targetx = 12;	
	} else {
		targetx = -12
	}
	
	var target1 = instance_create_layer(x + targetx, y, "Layer9", object9);
	var bullet1  = instance_create_layer(x, y, "Projectiles", bullet);
	with(bullet1){
		pewpew(target1, 12, path_action_continue, false);
	}
	
	for (var i = 1; i <= 4; i++) {
		
		
		var target2 = instance_create_layer(x + targetx, y + (3 * i), "Layer9", object9);
		var bullet2  = instance_create_layer(x, y, "Projectiles", bullet);
		with(bullet2){
			pewpew(target2, 12, path_action_continue, false);
		}
		
		var target3 = instance_create_layer(x + targetx, y - (3 * i), "Layer9", object9);
		var bullet3  = instance_create_layer(x, y, "Projectiles", bullet);
		with(bullet3){
			pewpew(target3, 12, path_action_continue, false);
		}
	}
}