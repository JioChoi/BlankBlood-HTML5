{
	image_speed = 0.25;
	draw_sprite_ext(global.SprE[23,2],-1,x,y+3*sin(image_index/5),dir,image_yscale+0.05*sin(step*2),image_angle,image_blend,0.5);
	draw_sprite_ext(global.SprE[23,3],-1,x,y+3*sin(image_index/5),dir,image_yscale,image_angle,image_blend,image_alpha);
}

move = 0;
