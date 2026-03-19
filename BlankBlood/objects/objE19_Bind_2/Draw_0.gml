{
	image_speed = 0.2;
	if(dir == 0) draw_sprite_ext(global.SprE19_Bind_1,-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
	else draw_sprite_ext(global.SprE19_Bind_1,-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);

	if(count<200){
		draw_set_alpha(random(0.3))
		draw_rectangle_color(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),c_black,c_black,c_black,c_black,false);
		draw_set_alpha(random(0.2))
		draw_rectangle_color(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),c_white,c_white,c_white,c_white,false);
		draw_set_alpha(1)
	}
}

move = 0;
