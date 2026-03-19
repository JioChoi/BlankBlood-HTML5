	image_speed = 0;
	draw_sprite_ext(global.SprP_AtkE_1[1],0,x,y,1,image_yscale,dir,image_blend,image_alpha);
	image_alpha -= 0.01;
	if(image_alpha<0) instance_destroy();
