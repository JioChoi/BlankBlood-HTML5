{
	switch (motion)
	{
	case 0: draw_sprite_ext(global.SprEBoss_Part[4],-1,x+posx+22*32,y+posy-32*10,1,image_yscale,image_angle,image_blend,image_alpha); break;
	case 1: draw_sprite_ext(global.SprEBoss_Atk1_Part[4],image_index/10,x+posx+22*32,y+posy-32*10,1,image_yscale,image_angle,image_blend,image_alpha); break;
	case 2: draw_sprite_ext(global.SprEBoss_Atk2_Part[4],image_index/6,x+posx+22*32,y+posy-32*10,1,image_yscale,image_angle,image_blend,image_alpha); break;
	default: break;
	}
}
/*
if(15<step&&step<25){
px = x+posx+22*32;py = y+posy-32*10;
draw_line(px,py,px+230*cos(degtorad(image_angle-105)),py-230*sin(degtorad(image_angle-105)));
}
*/
/* */
/*  */
