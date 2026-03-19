	switch (motion)
	{
	case 0:
		if(dir == 0) draw_sprite_ext(global.SprP_Death_10[0],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
		else draw_sprite_ext(global.SprP_Death_10[0],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
		break;
	case 10:
		if(cutkind == 1){
			if(dir == 0) draw_sprite_ext(global.SprP_Death_10n[0],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
			else draw_sprite_ext(global.SprP_Death_10n[0],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
		}else if(cutkind == 0){
			if(dir == 0) draw_sprite_ext(global.SprP_Death_10[0],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
			else draw_sprite_ext(global.SprP_Death_10[0],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
		}
		break;
	case 11:
		if(cutkind == 1){
			if(dir == 0) draw_sprite_ext(global.SprP_Death_11n[0],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
			else draw_sprite_ext(global.SprP_Death_11n[0],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
		}else if(cutkind == 0){
			if(dir == 0) draw_sprite_ext(global.SprP_Death_11[0],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
			else draw_sprite_ext(global.SprP_Death_11[0],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
		}
		break;
	case 12:
		if(cutkind == 1){
			if(dir == 0) draw_sprite_ext(global.SprP_Death_12n[0],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
			else draw_sprite_ext(global.SprP_Death_12n[0],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
		}else if(cutkind == 0){
			if(dir == 0) draw_sprite_ext(global.SprP_Death_12[0],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
			else draw_sprite_ext(global.SprP_Death_12[0],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
		}
		break;
	case 13:
		if(cutkind == 1){
			if(dir == 0) draw_sprite_ext(global.SprP_Death_10n[0],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
			else draw_sprite_ext(global.SprP_Death_10n[0],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
		}else if(cutkind == 0){
			if(dir == 0) draw_sprite_ext(global.SprP_Death_10[0],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
			else draw_sprite_ext(global.SprP_Death_10[0],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
		}
		break;
	case 20:
		if(dir == 0) draw_sprite_ext(global.SprP_Death_20[0],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
		else draw_sprite_ext(global.SprP_Death_20[0],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
		break;
	default: break;
	}
