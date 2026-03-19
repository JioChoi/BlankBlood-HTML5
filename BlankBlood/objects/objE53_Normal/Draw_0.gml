{
	draw_set_alpha(1);
	var f,i;
	f = floor(num/2);
	image_speed = 1;
	draw_sprite_ext(global.SprE53_Normal,0,x,y-(High-current),1,image_yscale,image_angle,image_blend,image_alpha);
	draw_rectangle_color(x-96,y-5-(High-current),x+96,y-5-High,3554891,3554891,3554891,3554891,false);
	draw_rectangle_color(x-96,y-5-(High-current),x+96,y-5-High,c_black,c_black,c_black,c_black,true);
	for(i=1;i<f+1;i+=1){
		draw_sprite_ext(global.SprE53_Normal,0,x+(i*192),y-(High-current),1,image_yscale,image_angle,image_blend,image_alpha);
		draw_rectangle_color(x-96+(i*192),y-5-(High-current),x+96+(i*192),y-5-High,3554891,3554891,3554891,3554891,false);
		draw_rectangle_color(x-96+(i*192),y-5-(High-current),x+96+(i*192),y-5-High,c_black,c_black,c_black,c_black,true);
		draw_sprite_ext(global.SprE53_Normal,0,x-(i*192),y-(High-current),1,image_yscale,image_angle,image_blend,image_alpha);
		draw_rectangle_color(x-96-(i*192),y-5-(High-current),x+96-(i*192),y-5-High,3554891,3554891,3554891,3554891,false);
		draw_rectangle_color(x-96-(i*192),y-5-(High-current),x+96-(i*192),y-5-High,c_black,c_black,c_black,c_black,true);
	}
}
/*
create memo
{
	kind = 0;		//1-�����@2-�@�B
	NoticeDis	 = 0;	//��������
	NearestDis	 = 0;	//�ڋߋ���
	NoticeZone	 = false;	//�����t���O

	AtkPoint_1	 = 0;	//�U�������n�_
	AtkPoint_2	 = 32;	//�U�������I�_
	AtkZone		 = false;	//�U���t���O

	
	step = 0;
	air = 0;			//0-�n��	1-��
	use = true;

	current = 0;
	High = 32*5-5;
	spd = 5;
	num = 1;
	v_flag = 0;
}
*/
/* */
/*  */
