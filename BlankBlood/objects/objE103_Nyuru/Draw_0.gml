{
	image_speed = 0.5;
	draw_sprite_ext(global.SprEBoss_Part[2],-1,x,y,1,1,rot,image_blend,image_alpha);
	draw_circle(x,y,10*sin(image_index),1);
}

