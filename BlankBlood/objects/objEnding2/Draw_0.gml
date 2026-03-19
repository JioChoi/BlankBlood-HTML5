		image_speed = 0.5;
		draw_sprite_ext(global.Spr_Bike[1],-1,240+random(1)+amount,203+random(1),0.5,0.5,0,make_color_rgb(50,50,50),image_alpha);
draw_set_alpha(global.scr_dark)
draw_rectangle_color(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),c_black,c_black,c_black,c_black,false)
draw_set_alpha(1)

mbtext_draw("�󔠃A�C�e�����z : "+ string(item_price),20,308,0,0,0);
mbtext_draw("�󔠎擾�� : "+ string(item_num/37*100),20,328,0,0,0);
mbtext_draw("�ŏI�X�R�A : "+ string(score),20,368,0,0,0);

if(view) mbtext_draw(Text[i],248,308,0,0,0);
