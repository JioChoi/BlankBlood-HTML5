{
	image_speed = 0.20;
	draw_sprite_ext(global.SprE[22,3],0,x,y+20,image_xscale,image_yscale+0.1*sin(image_index),image_angle,image_blend,0.8);
	draw_sprite_ext(global.SprE[22,0],-1,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
}
move = 0;
