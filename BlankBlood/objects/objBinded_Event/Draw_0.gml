draw_sprite_ext(global.SprP_Death_61[!global.chara],-1,x,y+5*sin(step/20),1,image_yscale,image_angle,image_blend,image_alpha);
draw_set_alpha(0.4);
draw_rectangle_color(x,y-64,x-32,y+64,c_lime,c_lime,c_white,c_white,0);
draw_rectangle_color(x,y-64,x+32,y+64,c_lime,c_lime,c_white,c_white,0);
draw_set_alpha(0.6);
draw_rectangle_color(x-10,y-64,x-14,y+64,c_white,c_white,c_white,c_white,0);
draw_rectangle_color(x-3,y-64,x-1,y+64,c_white,c_white,c_white,c_white,0);
draw_set_alpha(1);
