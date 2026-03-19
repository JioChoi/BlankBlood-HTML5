{
	switch (motion)
	{
	case 0: draw_sprite_ext(global.SprEBoss_Part[8],index,x+posx+21*32,y+posy-32*10,1,image_yscale,image_angle,image_blend,image_alpha); break;
	case 1: draw_sprite_ext(global.SprEBoss_Part[8],index,x+posx+21*32,y+posy-32*10,1,image_yscale,image_angle,image_blend,image_alpha); break;
	case 2: draw_sprite_ext(global.SprEBoss_Part[8],index,x+posx+21*32,y+posy-32*10,1,image_yscale,image_angle,image_blend,image_alpha); break;
	default: break;
	}
}
/*
var px,py;
px = x+posx+21*32;
py = y+posy-32*10;
draw_line(px+lengthdir_x(300,image_angle-180),py+lengthdir_y(300,image_angle-180),px+lengthdir_x(240,image_angle-180),py+lengthdir_y(240,image_angle-180))
*/
/* */
/*  */
