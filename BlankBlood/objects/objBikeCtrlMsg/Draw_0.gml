x = __view_get( e__VW.XView, 0 )+55;
y = __view_get( e__VW.YView, 0 )+40;

if(step > 5){
	draw_set_alpha(0.5);
	draw_rectangle_color(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),c_black,c_black,c_black,c_black,false);
	draw_set_alpha(0.3);
	draw_rectangle_color(x,y,x+400,y+300,c_black,c_black,c_black,c_black,false);
	draw_sprite_ext(global.SprPoint_Item,item,x+70,y+60,1,image_yscale,image_angle,image_blend,image_alpha);
	mbtext_draw("�~������\\n����������������ȏ��ŉ����ƐS���͂��Ƃ��B\\n�����Ƃ������̂��߂ɊO�܂ł̒��ʌo�H�����Ă�����B\\n�������̐l�Ԃɂ̓o���Ă��Ȃ��͂������E�E\\n�O�̈׏�Q����ݒu���Ă��������ǂ��Ă���v���낤�B\\n���������Ƃ������A�����܂ł��ǂ蒅���邾�낤���E�E�E\\n\\n�����炭�A�������낤�B\\n�����H����Ȃ��������A���n�𑼂̒N���ɑ��������B\\n������@��ȉ��ɋL���B�厖�Ɏg���ė~�����B\\n\\n���F�����E�O�����\\n���F�����E�������\\n�����F�Ə�����\\n\\nButton1�F�ˌ�\\nButton2�F�W�����v\\n",x-25,y,0,0,0);
}else{
	draw_set_alpha(step/10);
	draw_rectangle_color(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),c_black,c_black,c_black,c_black,false);
	draw_set_alpha(1);
	draw_rectangle_color(x-(40*step),y-(30*step),x+(40*step),y-(30*step),c_black,c_black,c_black,c_black,false);	
}


step+=0.5;

