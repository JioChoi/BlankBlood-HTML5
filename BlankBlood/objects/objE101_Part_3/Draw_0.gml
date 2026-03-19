{
	switch (motion)
	{
	case 2: draw_sprite_ext(global.SprEBoss_Atk1_Part[3],-1,x+20*32,y-32*6,1,image_yscale,image_angle,image_blend,image_alpha); break;
	case 6: draw_sprite_ext(global.SprEBoss_Part[3],1,x+18*32,y-32*7,1,image_yscale,image_angle,image_blend,image_alpha); break;
	default: draw_sprite_ext(global.SprEBoss_Part[3],0,x+20*32,y-32*6,1,image_yscale,image_angle,image_blend,image_alpha); break;
	}

	//draw_rectangle(x+14*32,y-32*7,x+22*32,y-32*8,1)
}
