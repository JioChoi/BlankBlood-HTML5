function DrawEventDmg(argument0, argument1, argument2, argument3, argument4) {
	var temp = argument1;
	temp = argument2;
	temp = argument3;
	temp = argument4;

		switch (argument0)
		{
		case 11:
			image_speed = 0.5;
			if(dir == 0) draw_sprite_ext(global.SprP_Damage_11[global.chara],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
			else draw_sprite_ext(global.SprP_Damage_11[global.chara],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
			break;
		case 21:
			image_speed = 0.5;
			if(dir == 0) draw_sprite_ext(global.SprP_Damage_21[global.chara],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
			else draw_sprite_ext(global.SprP_Damage_21[global.chara],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
			break;
		case 211:
			image_speed = 0.5;
			if(dir == 0) draw_sprite_ext(global.SprP_Damage_21[global.chara],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
			else draw_sprite_ext(global.SprP_Damage_21[global.chara],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
			break;
		case 22:
			image_speed = 0.5;
			if(dir == 0) draw_sprite_ext(global.SprP_Damage_21[global.chara],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
			else draw_sprite_ext(global.SprP_Damage_21[global.chara],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
			break;
		case 221:
			image_speed = 0.75;
			if(dir == 0) draw_sprite_ext(global.SprP_Damage_221[global.chara],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
			else draw_sprite_ext(global.SprP_Damage_221[global.chara],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
			break;
		case 2212:
			image_speed = 0;
			if(dir == 0) draw_sprite_ext(global.SprP_Damage_221[global.chara],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
			else draw_sprite_ext(global.SprP_Damage_221[global.chara],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
			break;
		case 222:
			image_speed = 0.75;
			if(dir == 0) draw_sprite_ext(global.SprP_Damage_222[global.chara],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
			else draw_sprite_ext(global.SprP_Damage_222[global.chara],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
			break;
		case 2222:
			image_speed = 0;
			if(dir == 0) draw_sprite_ext(global.SprP_Damage_222[global.chara],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
			else draw_sprite_ext(global.SprP_Damage_222[global.chara],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
			break;
		case 80:
			if(dir == 0) draw_sprite_ext(global.SprP_Death_81[global.chara],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
			else draw_sprite_ext(global.SprP_Death_81[global.chara],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
			break;
		default: break;
		}



}
