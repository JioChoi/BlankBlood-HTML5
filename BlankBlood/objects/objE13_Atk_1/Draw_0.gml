{
	if(step>40) image_speed = 0.5;
	else image_speed = step/100;
	if(dir == 0) draw_sprite_ext(global.SprE13_Atk_1,-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
	else draw_sprite_ext(global.SprE13_Atk_1,-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
}

move = 0;
