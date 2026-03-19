{
	image_speed = 0.2;
	draw_set_alpha(1)
	draw_rectangle_color(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),c_black,c_black,c_black,c_black,false)
	draw_sprite_ext(global.SprE[22,4],-1,x,y,1,1,image_angle,image_blend,image_alpha);
}
move = 0;
