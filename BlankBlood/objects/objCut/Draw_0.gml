	switch (cutkind)
	{
	case 1:
		image_speed = 0;
		if(dir == 0) draw_sprite_ext(global.SprP_Death_Cut_1[global.chara],-1,x,y,1,image_yscale,angle,image_blend,image_alpha);
		else draw_sprite_ext(global.SprP_Death_Cut_1[global.chara],-1,x,y,-1,image_yscale,angle,image_blend,image_alpha);
		break;
	case 2:
		image_speed = 0;
		if(dir == 0) draw_sprite_ext(global.SprP_Death_Cut_2[global.chara],-1,x,y,1,image_yscale,angle,image_blend,image_alpha);
		else draw_sprite_ext(global.SprP_Death_Cut_2[global.chara],-1,x,y,-1,image_yscale,angle,image_blend,image_alpha);
		break;
	default: break;
	}

