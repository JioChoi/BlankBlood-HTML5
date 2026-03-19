{
	if(inv) image_alpha = 0.5+sin(current_time);
	else image_alpha = 1;

	image_speed = 0.5;
	if(dir == 0){		
		draw_sprite_ext(global.SprP_Atk_11[0],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
	}else{
		draw_sprite_ext(global.SprP_Atk_11[0],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
	}
}
