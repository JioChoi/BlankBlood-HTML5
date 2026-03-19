draw_set_alpha(global.scr_dark)
draw_rectangle_color(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),c_black,c_black,c_black,c_black,false)
draw_set_alpha(1)
{
	draw_set_alpha(0.1);
	draw_rectangle_color(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+350,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),c_black,c_black,c_black,c_black,false);
	draw_set_alpha(0.1);
	draw_rectangle_color(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+345,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),c_black,c_black,c_black,c_black,false);
	draw_set_alpha(0.1);
	draw_rectangle_color(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+342,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),c_black,c_black,c_black,c_black,false);
	draw_set_alpha(0.1);
	draw_rectangle_color(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+340,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),c_black,c_black,c_black,c_black,false);
	draw_set_alpha(1);
}
action_set_health(global.HP[global.chara]/global.HPMAX[global.chara] *100);
action_draw_health(__view_get( e__VW.XView, 0 )+30, __view_get( e__VW.YView, 0 )+370, __view_get( e__VW.XView, 0 )+200, __view_get( e__VW.YView, 0 )+380, 1, 0);
action_set_health(global.HP[!global.chara]/global.HPMAX[!global.chara] *100);
action_draw_health(__view_get( e__VW.XView, 0 )+30, __view_get( e__VW.YView, 0 )+383, __view_get( e__VW.XView, 0 )+100, __view_get( e__VW.YView, 0 )+386, 1, 0);
action_set_health(global.weapon);
action_draw_health(__view_get( e__VW.XView, 0 )+120, __view_get( e__VW.YView, 0 )+383, __view_get( e__VW.XView, 0 )+170, __view_get( e__VW.YView, 0 )+386, 1, 14);
action_color(6118749);
action_draw_text("score : "+string(score), __view_get( e__VW.XView, 0 )+360, __view_get( e__VW.YView, 0 )+360);
action_color(16777215);
action_draw_text("score : "+string(score), __view_get( e__VW.XView, 0 )+361, __view_get( e__VW.YView, 0 )+362);
var __b__;
__b__ = action_if_variable(global.debug, 1, 0);
if __b__
{
{
/*
if(instance_exists(objE0a_Normal)){
	with(objNormal){
		draw_arrow(x,y,objE0a_Normal.x,objE0a_Normal.y,10);
		//draw_text(x,y,other.item);
	}
}
*/
/* */
action_draw_text("debugmode", __view_get( e__VW.XView, 0 )+420, __view_get( e__VW.YView, 0 ));
action_draw_variable(fps, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ));
}
}
action_color(210);
__b__ = action_if_variable(global.retry, 1, 0);
if __b__
{
action_draw_text("Press R-Key ... Restart", __view_get( e__VW.XView, 0 )+320, __view_get( e__VW.YView, 0 )+5);
}
__background_set( e__BG.X, 0, __view_get( e__VW.XView, 0 )/5 );
__background_set( e__BG.Y, 0, __view_get( e__VW.YView, 0 )/5 );


/* */
__b__ = action_if_variable(global.bind, 0, 2);
if __b__
{
with(objBind){draw_healthbar(x-48,y-48,x+48,y-46,global.bind,c_black,c_yellow,c_yellow,0,1,1);}
/* */
}
/*  */
