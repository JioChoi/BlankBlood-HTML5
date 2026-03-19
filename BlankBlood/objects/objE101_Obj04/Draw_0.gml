draw_rectangle_color(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),c_black,c_black,c_black,c_black,0);
draw_sprite_stretched_ext(global.SprE56_Normal,-1,320,1280,320,32*21,image_blend,image_alpha);
image_index += -1+random(2);
if(image_index<0) image_index = 30;
