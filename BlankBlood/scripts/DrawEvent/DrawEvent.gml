function DrawEvent() {
	{
		if(inv) image_alpha = 0.5+sin(current_time);
		else image_alpha = 1;

		if(air){
			if(vspeed < 0){
					image_speed = 0.3;
					if(dir == 0){
						if(global.chara) draw_sprite_ext(global.SprP_Atk_1[1],gun_index,x-6,y-12,-1,image_yscale,gun_dir+180,image_blend,image_alpha);
						draw_sprite_ext(global.SprP_jumpU_1[global.chara],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
					}else{
						if(global.chara) draw_sprite_ext(global.SprP_Atk_1[1],gun_index,x+6,y-12,1,image_yscale,gun_dir,image_blend,image_alpha);
						draw_sprite_ext(global.SprP_jumpU_1[global.chara],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
					}
			}else{
					image_speed = 0.3;
					if(dir == 0){
						if(global.chara) draw_sprite_ext(global.SprP_Atk_1[1],gun_index,x-6,y-12,-1,image_yscale,gun_dir+180,image_blend,image_alpha);
						draw_sprite_ext(global.SprP_jumpD_1[global.chara],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
					}else{
						if(global.chara) draw_sprite_ext(global.SprP_Atk_1[1],gun_index,x+6,y-12,1,image_yscale,gun_dir,image_blend,image_alpha);
						draw_sprite_ext(global.SprP_jumpD_1[global.chara],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
					}
			}
		}else{
			if(!move){
				if(crouch){
					image_speed = 0.3;
					if(dir == 0){
						if(global.chara) draw_sprite_ext(global.SprP_Atk_1[1],gun_index,x+7,y+12,-1,image_yscale,gun_dir+180,image_blend,image_alpha);
						draw_sprite_ext(global.SprP_crouch_1[global.chara],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
					}else{
						if(global.chara) draw_sprite_ext(global.SprP_Atk_1[1],gun_index,x-7,y+12,1,image_yscale,gun_dir,image_blend,image_alpha);
						draw_sprite_ext(global.SprP_crouch_1[global.chara],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
					}
				}else{
					if(0.6 < global.HP[global.chara]/global.HPMAX[global.chara]){
						image_speed = 0.25;
						if(dir == 0){
							if(global.chara) draw_sprite_ext(global.SprP_Atk_1[1],gun_index,x,y-12+abs( (4-(image_index*2 mod 8)) )/2,-1,image_yscale,gun_dir+180,image_blend,image_alpha);
							draw_sprite_ext(global.SprP_stand_1[global.chara],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
						}else{
							if(global.chara) draw_sprite_ext(global.SprP_Atk_1[1],gun_index,x,y-12+abs( (4-(image_index*2 mod 8)) )/2,1,image_yscale,gun_dir,image_blend,image_alpha);
							draw_sprite_ext(global.SprP_stand_1[global.chara],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
						}
					}else if(0.3 < global.HP[global.chara]/global.HPMAX[global.chara]){
						image_speed = 0.2;
						if(dir == 0){
							if(global.chara) draw_sprite_ext(global.SprP_Atk_1[1],gun_index,x-3,y-2-abs(4-((image_index-1) mod 8) )/2,-1,image_yscale,gun_dir+180,image_blend,image_alpha);
							draw_sprite_ext(global.SprP_stand_2[global.chara],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
						}else{
							if(global.chara) draw_sprite_ext(global.SprP_Atk_1[1],gun_index,x+3,y-2-abs(4-((image_index-1) mod 8) )/2,1,image_yscale,gun_dir,image_blend,image_alpha);
							draw_sprite_ext(global.SprP_stand_2[global.chara],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
						}
					}else{
						image_speed = 0.2;
						if(dir == 0){
							if(global.chara) draw_sprite_ext(global.SprP_Atk_1[1],gun_index,x+2,y+8-abs(5-((image_index-1) mod 11) )/5,-1,image_yscale,gun_dir+180,image_blend,image_alpha);
							draw_sprite_ext(global.SprP_stand_3[global.chara],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
						}else{
							if(global.chara) draw_sprite_ext(global.SprP_Atk_1[1],gun_index,x-2,y+8-abs(5-((image_index-1) mod 11) )/5,1,image_yscale,gun_dir,image_blend,image_alpha);
							draw_sprite_ext(global.SprP_stand_3[global.chara],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
						}
					}
				}
			}else{
				if(dash){
					image_speed = 0.35;
					if(dir == 0){
						if(global.chara) draw_sprite_ext(global.SprP_Atk_1[1],gun_index,x-5,y-6+sin(image_index),-1,image_yscale,gun_dir+180,image_blend,image_alpha);
						draw_sprite_ext(global.SprP_run_1[global.chara],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
					}else{
						if(global.chara) draw_sprite_ext(global.SprP_Atk_1[1],gun_index,x+5,y-6+sin(image_index),1,image_yscale,gun_dir,image_blend,image_alpha);
						draw_sprite_ext(global.SprP_run_1[global.chara],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
					}
				}else{
					image_speed = 0.3;
					if(dir == 0){
						if(global.chara) draw_sprite_ext(global.SprP_Atk_1[1],gun_index,x-5,y-6+sin(image_index),-1,image_yscale,gun_dir+180,image_blend,image_alpha);
						draw_sprite_ext(global.SprP_walk_1[global.chara],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
					}else{
						if(global.chara) draw_sprite_ext(global.SprP_Atk_1[1],gun_index,x+5,y-6+sin(image_index),1,image_yscale,gun_dir,image_blend,image_alpha);
						draw_sprite_ext(global.SprP_walk_1[global.chara],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
					}
				}
			}
		}
	}



}
