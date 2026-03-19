{
	if(image_index > 4) image_index = 0;
	if(image_index==0) image_speed = 0;
	else image_speed = 0.5;
	if(Percentage(4)) image_index += 1;

	if(dir == 0) draw_sprite_ext(global.SprE54_Finish_1,-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
	else draw_sprite_ext(global.SprE54_Finish_1,-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
}
move = 0;
