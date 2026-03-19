function DrawEventAtk(argument0, argument1, argument2, argument3, argument4) {
	{
		var temp = argument1;
		temp = argument2;
		temp = argument3;
		temp = argument4;
	
		if(inv) image_alpha = 0.5+sin(current_time);
		else image_alpha = 1;

		switch (argument0)
		{
		case 1:
			image_speed = 0.4;
			if(dir == 0){		
				draw_sprite_ext(global.SprP_AtkE_1[global.chara],-1,x,y,1,image_yscale,image_angle,image_blend,((10-step)/10)*image_alpha);
				draw_sprite_ext(global.SprP_Atk_1[global.chara],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
			}else{
				draw_sprite_ext(global.SprP_AtkE_1[global.chara],-1,x,y,-1,image_yscale,image_angle,image_blend,((10-step)/10)*image_alpha);
				draw_sprite_ext(global.SprP_Atk_1[global.chara],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
			}
			break;
		case 2:
			image_speed = 0.4;
			if(dir == 0){
				draw_sprite_ext(global.SprP_AtkE_2[global.chara],-1,x,y,1,image_yscale,image_angle,image_blend,((10-step)/10)*image_alpha);
				draw_sprite_ext(global.SprP_Atk_2[global.chara],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
			}else{
				draw_sprite_ext(global.SprP_AtkE_2[global.chara],-1,x,y,-1,image_yscale,image_angle,image_blend,((10-step)/10)*image_alpha);
				draw_sprite_ext(global.SprP_Atk_2[global.chara],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
			}
			break;
		case 3:
			image_speed = 0.4;
			if(dir == 0){
				draw_sprite_ext(global.SprP_AtkE_3[global.chara],-1,x,y,1,image_yscale,image_angle,image_blend,((10-step)/10)*image_alpha);
				draw_sprite_ext(global.SprP_Atk_3[global.chara],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
			}else{
				draw_sprite_ext(global.SprP_AtkE_3[global.chara],-1,x,y,-1,image_yscale,image_angle,image_blend,((10-step)/10)*image_alpha);
				draw_sprite_ext(global.SprP_Atk_3[global.chara],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
			}
			break;
		case 4:
			image_speed = 0.4;
			if(dir == 0){
				draw_sprite_ext(global.SprP_AtkE_4[global.chara],-1,x,y,1,image_yscale,image_angle,image_blend,((10-step)/10)*image_alpha);
				draw_sprite_ext(global.SprP_Atk_4[global.chara],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
			}else{
				draw_sprite_ext(global.SprP_AtkE_4[global.chara],-1,x,y,-1,image_yscale,image_angle,image_blend,((10-step)/10)*image_alpha);
				draw_sprite_ext(global.SprP_Atk_4[global.chara],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
			}
			break;
		case 5:
			image_speed = 0.7;
			if(dir == 0){
				draw_sprite_ext(global.SprP_AtkE_J[global.chara],-1,x,y,1,image_yscale,image_angle,image_blend,((10-step)/10)*image_alpha);
				draw_sprite_ext(global.SprP_Atk_J[global.chara],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
			}else{
				draw_sprite_ext(global.SprP_AtkE_J[global.chara],-1,x,y,-1,image_yscale,image_angle,image_blend,((10-step)/10)*image_alpha);
				draw_sprite_ext(global.SprP_Atk_J[global.chara],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
			}
			break;
		default: break;
		}
	}



}
