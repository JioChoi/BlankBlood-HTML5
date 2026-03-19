draw_sprite_ext(global.SprEBoss_Part[6],left_index,x-(160-left),y,1,image_yscale,image_angle,image_blend,image_alpha);
draw_sprite_ext(global.SprEBoss_Part[6],right_index,x+320+(160-right),y,-1,image_yscale,image_angle,image_blend,image_alpha);
draw_rectangle_color(x,y,x-320,y+672,c_black,c_black,c_black,c_black,0);
draw_rectangle_color(x+320,y,x+640,y+672,c_black,c_black,c_black,c_black,0);
draw_rectangle_color(x-160,1920,x+320+160,2500,c_black,c_black,c_black,c_black,0);
