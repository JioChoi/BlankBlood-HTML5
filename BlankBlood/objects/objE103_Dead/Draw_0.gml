	switch (motion)
	{
	case 11:
		if(cutkind == 1){
			if(dir == 0) draw_sprite_ext(global.SprP_Death_11n[chara],-1,x,y-16,1,image_yscale,image_angle,image_blend,image_alpha);
			else draw_sprite_ext(global.SprP_Death_11n[chara],-1,x,y-16,-1,image_yscale,image_angle,image_blend,image_alpha);
		}else if(cutkind == 0){
			if(dir == 0) draw_sprite_ext(global.SprP_Death_11[chara],-1,x,y-16,1,image_yscale,image_angle,image_blend,image_alpha);
			else draw_sprite_ext(global.SprP_Death_11[chara],-1,x,y-16,-1,image_yscale,image_angle,image_blend,image_alpha);
		}
		break;
	case 12:
		if(cutkind == 1){
			if(dir == 0) draw_sprite_ext(global.SprP_Death_12n[chara],-1,x,y-16,1,image_yscale,image_angle,image_blend,image_alpha);
			else draw_sprite_ext(global.SprP_Death_12n[chara],-1,x,y-16,-1,image_yscale,image_angle,image_blend,image_alpha);
		}else if(cutkind == 0){
			if(dir == 0) draw_sprite_ext(global.SprP_Death_12[chara],-1,x,y-16,1,image_yscale,image_angle,image_blend,image_alpha);
			else draw_sprite_ext(global.SprP_Death_12[chara],-1,x,y-16,-1,image_yscale,image_angle,image_blend,image_alpha);
		}
		break;
	case 21:
		if(dir == 0) draw_sprite_ext(global.SprP_Death_21[chara],-1,x,y-16,1,image_yscale,image_angle,image_blend,image_alpha);
		else draw_sprite_ext(global.SprP_Death_21[chara],-1,x,y-16,-1,image_yscale,image_angle,image_blend,image_alpha);
		break;
	default: break;
	}
