{
	if(air){
		if(vspeed < 0){
				image_speed = 0.5;
				if(dir == 0) draw_sprite_ext(global.SprE14_stand_1,-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
				else draw_sprite_ext(global.SprE14_stand_1,-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
		}else{
				image_speed = 0.5;
				if(dir == 0) draw_sprite_ext(global.SprE14_stand_1,-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
				else draw_sprite_ext(global.SprE14_stand_1,-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
		}
	}else{
		if(!move){
			image_speed = 0.2;
			if(dir == 0) draw_sprite_ext(global.SprE14_stand_1,-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
			else draw_sprite_ext(global.SprE14_stand_1,-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
		}else{
			if(NoticeZone) image_speed = 0.3;
			else image_speed = 0.25;
			if(dir == 0) draw_sprite_ext(global.SprE14_Walk_1,-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
			else draw_sprite_ext(global.SprE14_Walk_1,-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
		}
	}
}

move = 0;
