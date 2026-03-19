action_draw_gradient_vert(0, 320, 512, 360, 255, 0);
action_color(255);
action_draw_text_transformed("BlankBlood", 260, 100, 2, 2, 10);
x = __view_get( e__VW.XView, 0 )+55;
y = __view_get( e__VW.YView, 0 )+40;

if(global.item_flag[item]){
draw_set_alpha(0.5);
draw_rectangle_color(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),c_black,c_black,c_black,c_black,false);
draw_set_alpha(0.3);
draw_rectangle_color(x,y,x+400,y+270,c_black,c_black,c_black,c_black,false);
draw_set_alpha(0.5);
draw_rectangle_color(x+55,y+39,x+85,y+70,c_white,c_white,c_white,c_white,false);
draw_set_alpha(1);
draw_sprite_ext(global.SprPoint_Item,item,x+70,y+60,1,image_yscale,image_angle,image_blend,image_alpha);
mbtext_draw("�m��. "+string(item)+"   "+string(global.item_name[item]),x+100,y+50,0,0,0);
mbtext_draw("���i : "+string(global.item_point[item]),x+200,y+80,0,0,0);
mbtext_draw(global.item_detail[item],x+50,y+110,300,0,0);
}else{
draw_set_alpha(0.5);
draw_rectangle_color(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),c_black,c_black,c_black,c_black,false);
draw_set_alpha(0.3);
draw_rectangle_color(x,y,x+400,y+270,c_black,c_black,c_black,c_black,false);
draw_set_alpha(0.5);
draw_rectangle_color(x+55,y+39,x+85,y+70,c_white,c_white,c_white,c_white,false);
draw_set_alpha(1);
draw_sprite_ext(global.SprPoint_Item,0,x+70,y+60,1,image_yscale,image_angle,image_blend,image_alpha);
draw_text_color(x+65,y+46,string_hash_to_newline("?"),c_red,c_red,c_red,c_red,1);
mbtext_draw("�m��. "+string(item)+"   ???",x+100,y+50,0,0,0);
mbtext_draw("���i : ???",x+200,y+80,0,0,0);
mbtext_draw("???",x+50,y+110,300,0,0);
}

mbtext_draw("�󔠃A�C�e�����z : "+ string(item_price),x+200,y+285,300,0,0);

