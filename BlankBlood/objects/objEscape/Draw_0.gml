if(global.event) {
	if(inv) image_alpha = 0.5+sin(current_time);
	else image_alpha = 1;

	if(air){
		image_speed = 0.5;
		draw_sprite_ext(global.Spr_Bike[1],-1,x,y,1,image_yscale,sin(image_index*16)-16,image_blend,image_alpha);
	}else{
		image_speed = 0.5;
		draw_sprite_ext(global.Spr_Bike[1],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
	}
}else{
	if(inv) image_alpha = 0.5+sin(current_time);
	else image_alpha = 1;

	if(air){
		switch(mode){
			case 1: image_speed = 0.5;
				break;
			case 3: image_speed = 0.5;
				break;
		}
		draw_sprite_ext(global.Spr_Gun[mode],gun,x+21,y-25,1,	image_yscale,gun_dir				,image_blend,image_alpha);
		draw_sprite_ext(global.Spr_Bike[mode],-1,x,y,1,			image_yscale,sin(image_index*16)-16	,image_blend,image_alpha);
/*		draw_sprite_ext(global.Spr_Bike[1],-1,x,y,1,image_yscale,sin(image_index*16)-16,image_blend,image_alpha);*/
	}else{
		switch(mode){
			case 1: image_speed = 0.5;
				break;
			case 3: image_speed = 0.5;
				break;
		}
		draw_sprite_ext(global.Spr_Gun[mode],gun,x+21,y-25,1,image_yscale,gun_dir,image_blend,image_alpha);
		draw_sprite_ext(global.Spr_Bike[mode],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
	}
}

/* */
/*  */
