{
	if(vspeed > 20) vspeed = 20;
	if(image_index<11){
		if(image_index>8) gravity = 0.98;
		if(image_index == 10) image_index = 9;
		col = collision_rectangle(x,y,x,yprevious,objNormal,0,1);
		with(col){
			if(global.HP[global.chara]>=0 && !global.retry){
				dmgkind = 11;
				deadkind = 10;
				pow = 1;
				direct = 270;

				global.HP[global.chara] -= random(5);
				step = 1;
				quake(20,5);
				Flash(c_red,0.1,0.05);
				voice_play(VicNormalDmg(0));
				image_alpha = 1;
				dashKey = 0;
				dash = false;
				crouch = false;
				cutkind = 0;
				motion_add(270,5);

				if(global.HP[global.chara]<=0) alarm[11] = 1;
				with(other){alarm[11] = 1};
				if(global.bind<0) instance_change(objDamage,false);
			}
		}
	}else if(image_index>13) instance_destroy();
}
