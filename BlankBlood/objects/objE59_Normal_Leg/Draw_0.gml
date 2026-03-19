{
	image_speed = 0;
	if(flag) draw_sprite_ext(global.SprE58_Finish,abs(__view_get( e__VW.XView, 0 )/20),x,y,1,image_yscale,image_angle,image_blend,1);
	else draw_sprite_ext(global.SprE58_Normal,abs(__view_get( e__VW.XView, 0 )/20),x,y,1,image_yscale,image_angle,image_blend,sin(__view_get( e__VW.XView, 0 )/70)*0.7);
}


