/// @description 
rectangle = [0, 0, 0, 0]
bonus_objects = [];
faceable = true;

surf = surface_create(room_width, room_height);

set_rectangle = function(x1, y1, x2, y2){
	rectangle = [x1, y1, x2, y2];
}
