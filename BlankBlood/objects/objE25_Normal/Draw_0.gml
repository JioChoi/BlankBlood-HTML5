{
	var c;
	c = merge_color(image_blend,c_ltgray,0.7);
	if(dir){
	draw_sprite_ext(global.SprE[25,1],-1,x+posx_01,y+posy_01,image_xscale,image_yscale,angle_01,c,image_alpha);
	draw_sprite_ext(global.SprE[25,1],-1,x+posx_02,y+posy_02,image_xscale,image_yscale,angle_02,c,image_alpha);
	draw_sprite_ext(global.SprE[25,3],-1,x+posx_05,y+posy_05,image_xscale,image_yscale,angle_05,c,image_alpha);

	draw_sprite_ext(global.SprE[25,4],-1,x+posx_07,y+posy_07,image_xscale,image_yscale,angle_07,c,image_alpha);
	draw_sprite_ext(global.SprE[25,6],-1,x+posx_09,y+posy_09,image_xscale,image_yscale,angle_09,c,image_alpha);

	draw_sprite_ext(global.SprE[25,0],-1,x+posx_00,y+posy_00,image_xscale,image_yscale,angle_00,image_blend,image_alpha);

	draw_sprite_ext(global.SprE[25,5],-1,x+posx_08,y+posy_08,image_xscale,image_yscale,angle_08,image_blend,image_alpha);
	draw_sprite_ext(global.SprE[25,7],-1,x+posx_10,y+posy_10,image_xscale,image_yscale,angle_10,image_blend,image_alpha);

	draw_sprite_ext(global.SprE[25,2],-1,x+posx_03,y+posy_03,image_xscale,image_yscale,angle_03,image_blend,image_alpha);
	draw_sprite_ext(global.SprE[25,2],-1,x+posx_04,y+posy_04,image_xscale,image_yscale,angle_04,image_blend,image_alpha);
	draw_sprite_ext(global.SprE[25,3],-1,x+posx_06,y+posy_06,image_xscale,image_yscale,angle_06,image_blend,image_alpha);
	}else{
	draw_sprite_ext(global.SprE[25,1],-1,x-posx_01,y+posy_01,-image_xscale,image_yscale,-angle_01,c,image_alpha);
	draw_sprite_ext(global.SprE[25,1],-1,x-posx_02,y+posy_02,-image_xscale,image_yscale,-angle_02,c,image_alpha);
	draw_sprite_ext(global.SprE[25,3],-1,x-posx_05,y+posy_05,-image_xscale,image_yscale,-angle_05,c,image_alpha);

	draw_sprite_ext(global.SprE[25,4],-1,x-posx_07,y+posy_07,-image_xscale,image_yscale,-angle_07,c,image_alpha);
	draw_sprite_ext(global.SprE[25,6],-1,x-posx_09,y+posy_09,-image_xscale,image_yscale,-angle_09,c,image_alpha);

	draw_sprite_ext(global.SprE[25,0],-1,x-posx_00,y+posy_00,-image_xscale,image_yscale,-angle_00,image_blend,image_alpha);

	draw_sprite_ext(global.SprE[25,5],-1,x-posx_08,y+posy_08,-image_xscale,image_yscale,-angle_08,image_blend,image_alpha);
	draw_sprite_ext(global.SprE[25,7],-1,x-posx_10,y+posy_10,-image_xscale,image_yscale,-angle_10,image_blend,image_alpha);

	draw_sprite_ext(global.SprE[25,2],-1,x-posx_03,y+posy_03,-image_xscale,image_yscale,-angle_03,image_blend,image_alpha);
	draw_sprite_ext(global.SprE[25,2],-1,x-posx_04,y+posy_04,-image_xscale,image_yscale,-angle_04,image_blend,image_alpha);
	draw_sprite_ext(global.SprE[25,3],-1,x-posx_06,y+posy_06,-image_xscale,image_yscale,-angle_06,image_blend,image_alpha);

	}
}

move = 0;
