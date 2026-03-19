{
	if(inv) image_alpha = 0.5+sin(current_time);
	else image_alpha = 1;
	if(dir == 0) draw_sprite_ext(global.SprP_Atk_8[0],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
	else draw_sprite_ext(global.SprP_Atk_8[0],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);


	if(image_index == 6){
		if(dir){
			draw_set_color(c_black);
			draw_arrow(x+2,y+2,x+2+lengthdir_x(throw_pow*3,throw_dir),y+2+lengthdir_y(throw_pow*3,throw_dir),10);
			draw_set_color(c_white);
			draw_arrow(x,y,x+lengthdir_x(throw_pow*3,throw_dir),y+lengthdir_y(throw_pow*3,throw_dir),10);
		}else{
			draw_set_color(c_black);
			draw_arrow(x+2,y+2,x+2+lengthdir_x(throw_pow*3,rev_angle(throw_dir)),y+2+lengthdir_y(throw_pow*3,rev_angle(throw_dir)),10);
			draw_set_color(c_white);
			draw_arrow(x,y,x+lengthdir_x(throw_pow*3,rev_angle(throw_dir)),y+lengthdir_y(throw_pow*3,rev_angle(throw_dir)),10);

		}
	}
}
