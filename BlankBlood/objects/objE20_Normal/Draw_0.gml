{
	if(!move){
		image_speed = 0;
		if(dir == 0) draw_sprite_ext(global.SprE20_Walk_1,-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
		else draw_sprite_ext(global.SprE20_Walk_1,-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
	}else{
		if(NoticeZone) image_speed = 0.75;
		else image_speed = 0.5;
		if(dir == 0) draw_sprite_ext(global.SprE20_Walk_1,-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
		else draw_sprite_ext(global.SprE20_Walk_1,-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
	}
}

move = 0;
