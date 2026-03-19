function DrawEvent3() {
	{
		if(inv) image_alpha = 0.5+sin(current_time);
		else image_alpha = 1;

		if(air){
			if(vspeed < 0){
					image_speed = 0.3;
					if(dir == 0){
						draw_sprite_ext(global.SprP_jumpU_2[1],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
						draw_sprite_ext(global.SprP_AtkE_4[1],gun_index,x-6,y-8,-1,image_yscale,gun_dir+180,image_blend,image_alpha);
					}else{
						draw_sprite_ext(global.SprP_jumpU_2[1],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
						draw_sprite_ext(global.SprP_AtkE_4[1],gun_index,x+6,y-8,1,image_yscale,gun_dir,image_blend,image_alpha);
					}
			}else{
					image_speed = 0.3;
					if(dir == 0){
						draw_sprite_ext(global.SprP_jumpD_1[1],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
						draw_sprite_ext(global.SprP_AtkE_4[1],gun_index,x-6,y-8,-1,image_yscale,gun_dir+180,image_blend,image_alpha);
					}else{
						draw_sprite_ext(global.SprP_jumpD_1[1],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
						draw_sprite_ext(global.SprP_AtkE_4[1],gun_index,x+6,y-8,1,image_yscale,gun_dir,image_blend,image_alpha);
					}
			}
		}else{
			if(!move){
				if(crouch){
					image_speed = 0.3;
					if(dir == 0){
						draw_sprite_ext(global.SprP_crouch_1[1],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
						draw_sprite_ext(global.SprP_AtkE_4[1],gun_index,x,y+24,-1,image_yscale,gun_dir+180,image_blend,image_alpha);
					}else{
						draw_sprite_ext(global.SprP_crouch_1[1],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
						draw_sprite_ext(global.SprP_AtkE_4[1],gun_index,x,y+24,1,image_yscale,gun_dir,image_blend,image_alpha);
					}
				}else{
					image_speed = 0.25;
					if(dir == 0){
						draw_sprite_ext(global.SprP_stand_1[1],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
						draw_sprite_ext(global.SprP_AtkE_4[1],gun_index,x,y+2,-1,image_yscale,gun_dir+180,image_blend,image_alpha);
					}else{
						draw_sprite_ext(global.SprP_stand_1[1],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
						draw_sprite_ext(global.SprP_AtkE_4[1],gun_index,x,y+2,1,image_yscale,gun_dir,image_blend,image_alpha);
					}
				}
			}else{
				if(dash){
					image_speed = 0.35;
					if(dir == 0){
						draw_sprite_ext(global.SprP_run_2[1],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
						draw_sprite_ext(global.SprP_AtkE_4[1],gun_index,x-10,y+8+sin(image_index),-1,image_yscale,gun_dir+180,image_blend,image_alpha);
					}else{
						draw_sprite_ext(global.SprP_run_2[1],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
						draw_sprite_ext(global.SprP_AtkE_4[1],gun_index,x+10,y+8+sin(image_index),1,image_yscale,gun_dir,image_blend,image_alpha);
					}
				}else{
					image_speed = 0.3;
					if(dir == 0){
						draw_sprite_ext(global.SprP_walk_2[1],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
						draw_sprite_ext(global.SprP_AtkE_4[1],gun_index,x-10,y+8+sin(image_index),-1,image_yscale,gun_dir+180,image_blend,image_alpha);
					}else{
						draw_sprite_ext(global.SprP_walk_2[1],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
						draw_sprite_ext(global.SprP_AtkE_4[1],gun_index,x+10,y+8+sin(image_index),1,image_yscale,gun_dir,image_blend,image_alpha);
					}
				}
			}
		}
	}



}
