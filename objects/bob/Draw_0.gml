/// @description Debug
// You can write your code in this editor
if fire_meter > 0 {
	draw_sprite(vfx_fire_back, floor(fire_meter/6), x, y)
}
draw_self();
if fire_meter > 0 {
	draw_sprite(vfx_fire_front, floor(fire_meter/6), x, y)
}
draw_text(x,y-65,string(fire_meter));
draw_text(x,y-95,string(is_burning));