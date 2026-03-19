{
	if(dir == 0){
		draw_sprite_ext(global.SprE17_Bullet_1,-1,x,y,image_xscale,image_yscale,image_angle,2638843,image_alpha);
		draw_sprite_ext(global.SprE17_Bullet_1,-1,x,y,image_xscale*0.7,image_yscale*0.7,image_angle,33023,image_alpha*0.7);
	}else{
		draw_sprite_ext(global.SprE17_Bullet_1,-1,x,y,-image_xscale,image_yscale,image_angle,2638843,image_alpha);
		draw_sprite_ext(global.SprE17_Bullet_1,-1,x,y,-image_xscale*0.7,image_yscale*0.7,image_angle,33023,image_alpha*0.7);
	}
}

