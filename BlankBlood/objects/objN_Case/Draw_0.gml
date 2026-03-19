	switch (kind)
	{
	case 1:
		image_speed = 0;
		draw_sprite_ext(global.SprP_AtkE_1[1],0,x,y,1,image_yscale,dir,image_blend,image_alpha);
		break;
	case 2:
		image_speed = 0;
		draw_sprite_ext(global.SprP_AtkE_2[1],-1,x,y,1,image_yscale,dir,image_blend,image_alpha);
		break;
	case 3:
		image_speed = 0;
		draw_sprite_ext(global.SprP_AtkE_1[1],1,x,y,1,image_yscale,dir,image_blend,image_alpha);
		break;
	case 4:
		image_speed = 0;
		draw_sprite_ext(global.SprP_AtkE_1[1],2,x,y,1,image_yscale,dir,image_blend,image_alpha);
		break;
	default: break;
	}
	if(flag) image_alpha -= 0.1;
	if(image_alpha<0) instance_destroy();
