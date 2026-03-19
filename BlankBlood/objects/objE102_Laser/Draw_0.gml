if(1<image_index && image_index<80){
	color = random(c_white);
	draw_circle_color(x+lengthdir_x(100,image_angle),y+lengthdir_y(100,image_angle),image_index/6+random(3),color,color+30000,false);
}else if(80<image_index){
	color = random(c_white);
	draw_circle_color(x+lengthdir_x(100,image_angle),y+lengthdir_y(100,image_angle),5+random(3),color,color+30000,false);
	draw_line_color(x+lengthdir_x(100,image_angle),y+lengthdir_y(100,image_angle),las_x,las_y,color,color+30000);
}
{
draw_sprite_ext(global.SprEBoss_Part[9],-1,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
}


