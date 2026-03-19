{
	if(air){
		if(vspeed < 0){
				image_speed = 0.5;
				if(dir == 0) draw_sprite_ext(global.SprE19_Jump_1,image_index+5,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
				else draw_sprite_ext(global.SprE19_Jump_1,image_index+5,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
		}else{
				image_speed = 0.5;
				if(dir == 0) draw_sprite_ext(global.SprE19_Jump_1,image_index+5,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
				else draw_sprite_ext(global.SprE19_Jump_1,image_index+5,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
		}
		if(image_index >12){image_index = 0;vspeed -= 4+random(6)}
	}else{
		if(!move){
			image_speed = 0.2;
			if(dir == 0) draw_sprite_ext(global.SprE19_Walk_1,-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
			else draw_sprite_ext(global.SprE19_Walk_1,-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
		}else{
			image_speed = 0.2;
			if(dir == 0) draw_sprite_ext(global.SprE19_Walk_1,-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
			else draw_sprite_ext(global.SprE19_Walk_1,-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
		}
	}
}


move = 0;
