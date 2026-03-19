x = __view_get( e__VW.XView, 0 )+55;
y = __view_get( e__VW.YView, 0 )+40;

if(step > 0){
	draw_set_alpha(0.4);
	draw_rectangle_color(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),c_black,c_black,c_black,c_black,false);
	draw_set_alpha(1);
	if(sin(step/150)) draw_text_color(x+180,y+130,string_hash_to_newline("pause"),c_white,c_white,c_white,c_white,1);

	draw_text_color(x+140,y+170,string_hash_to_newline("Return to Title?"),c_white,c_white,c_white,c_white,1);
	draw_text_color(x+160,y+200,string_hash_to_newline("No"),c_white,c_white,c_white,c_white,1);
	draw_text_color(x+220,y+200,string_hash_to_newline("Yes"),c_white,c_white,c_white,c_white,1);
	draw_text_color(x+145+(60*select),y+200,string_hash_to_newline("@"),c_white,c_white,c_white,c_white,1);
}

step+=0.5;

var __b__;
__b__ = action_if_variable(global.item_flag[21], true, 0);
if __b__
{
{
action_draw_sprite(sprMap, __view_get( e__VW.XView, 0 )+8, __view_get( e__VW.YView, 0 )+8, -1);
__b__ = action_if(global.room_x<11 && global.room_y<11 );
if __b__
{
action_draw_sprite(sprMapCurrent, __view_get( e__VW.XView, 0 )+9+global.room_x*13, __view_get( e__VW.YView, 0 )+9+global.room_y*9, -1);
}
}
}
