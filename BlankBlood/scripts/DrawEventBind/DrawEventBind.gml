function DrawEventBind(argument0, argument1, argument2, argument3, argument4) {
	var temp = argument1;
	temp = argument2;
	temp = argument3;
	temp = argument4;

		switch (argument0)
		{
		case 1:
			if(dir == 0) draw_sprite_ext(global.SprP_Bind_1[global.chara],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
			else draw_sprite_ext(global.SprP_Bind_1[global.chara],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
			break;
		case 2:
			if(dir == 0) draw_sprite_ext(global.SprP_Bind_2[global.chara],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
			else draw_sprite_ext(global.SprP_Bind_2[global.chara],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
			break;
		case 3:
			if(dir == 0) draw_sprite_ext(global.SprP_Bind_3[global.chara],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
			else draw_sprite_ext(global.SprP_Bind_3[global.chara],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
			break;
		case 4:
			if(dir == 0) draw_sprite_ext(global.SprP_Bind_4[global.chara],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
			else draw_sprite_ext(global.SprP_Bind_4[global.chara],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
			break;
		case 5:
			if(dir == 0) draw_sprite_ext(global.SprP_Bind_5[global.chara],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
			else draw_sprite_ext(global.SprP_Bind_5[global.chara],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
			break;
		case 6:
			if(dir == 0) draw_sprite_ext(global.SprP_Bind_6[global.chara],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
			else draw_sprite_ext(global.SprP_Bind_6[global.chara],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
			break;
		case 7:
			if(dir == 0) draw_sprite_ext(global.SprP_Bind_7[global.chara],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
			else draw_sprite_ext(global.SprP_Bind_7[global.chara],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
			break;
		case 8:
			image_speed = 0.25;
			if(dir == 0) draw_sprite_ext(global.SprP_Damage_31[global.chara],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
			else draw_sprite_ext(global.SprP_Damage_31[global.chara],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
			break;
		case 9:
			if(dir == 0){
				if(hs) draw_sprite_ext(global.SprP_Damage_221[global.chara],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
				else draw_sprite_ext(global.SprP_Damage_222[global.chara],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);			
			}else{
				if(hs) draw_sprite_ext(global.SprP_Damage_221[global.chara],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
				else draw_sprite_ext(global.SprP_Damage_222[global.chara],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);			
			}
			break;
		default: break;
		}



}
