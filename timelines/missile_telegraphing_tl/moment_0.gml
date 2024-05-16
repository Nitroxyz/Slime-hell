///@desc draws the red line
if(instance_exists(target)) {

tele_line = layer_sprite_create("Sprites",x,y,spr_oneSidedLine);
layer_sprite_angle(tele_line,point_direction(x, y, target.x, target.y));
}
//draw_line_width_colour(x1, y1, x2, y2, w, col1, col2);