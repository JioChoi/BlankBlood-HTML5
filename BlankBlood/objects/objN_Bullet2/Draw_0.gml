if(flag){
	draw_set_alpha(image_alpha);
	draw_line_color(pre_x,pre_y,x,y,c_white,c_gray);
	image_alpha -= 0.2;
	if(image_alpha<0) instance_destroy();
}

//draw_line_color(pre_x,pre_y,x,y,c_red,c_red);
