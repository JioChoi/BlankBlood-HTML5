x = __view_get( e__VW.XView, 0 )+55;
y = __view_get( e__VW.YView, 0 )+40;

if(step > 5){
	draw_set_alpha(0.5);
	draw_rectangle_color(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),c_black,c_black,c_black,c_black,false);
	draw_set_alpha(0.3);
	draw_rectangle_color(x,y,x+400,y+300,c_black,c_black,c_black,c_black,false);
	draw_set_alpha(0.5);
	draw_rectangle_color(x+55,y+39,x+85,y+70,c_white,c_white,c_white,c_white,false);
	draw_set_alpha(1);
	draw_sprite_ext(global.SprPoint_Item,item,x+70,y+60,1,image_yscale,image_angle,image_blend,image_alpha);
	mbtext_draw("�m��. "+string(item)+"   "+string(global.item_name[item]),x+100,y+50,0,0,0);
	mbtext_draw("���i : "+string(global.item_point[item]),x+200,y+80,0,0,0);
	mbtext_draw(global.item_detail[item],x+50,y+110,300,0,0);
}else{
	draw_set_alpha(step/10);
	draw_rectangle_color(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),c_black,c_black,c_black,c_black,false);
	draw_set_alpha(1);
	draw_rectangle_color(x-(40*step),y-(30*step),x+(40*step),y-(30*step),c_black,c_black,c_black,c_black,false);	
}


step+=0.5;
