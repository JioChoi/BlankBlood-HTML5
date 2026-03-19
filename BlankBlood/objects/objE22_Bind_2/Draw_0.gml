{
	if(mode==0){
		image_speed = 0.75;
		draw_sprite_ext(global.SprE[22,3],15,x,y,image_xscale,image_yscale+0.1*sin(image_index),image_angle,image_blend,0.8);
		draw_sprite_ext(global.SprE[22,0],-1,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
	}else if(mode == 1){
		image_speed = 0.2;
		draw_sprite_ext(global.SprE[22,3],2,x,y,0.8,0.9+0.1*sin(image_index),image_angle,image_blend,0.7);
		draw_sprite_ext(global.SprE[22,2],-1,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);		
	}
}
move = 0;
