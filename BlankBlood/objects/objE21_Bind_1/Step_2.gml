{
	if(image_index<5) image_speed = 0.5;
	else{
		image_speed = 0;
		if(Percentage(5)){
			global.HP[global.chara] -= random(10);
			global.bind += 10;
			quake(15,9);
			image_index = 0;
			with(objNormal){
				sound_play(global.SndHit_05);
				if(!global.retry){
					if(Percentage(50)) voice_play(VicNormalDmg(0));
					image_index = 0;
				}else if(image_index>21){
					if(Percentage(10)) voice_play(VicNormalDmg(2));
					image_index = 21;
				}
			}
		}
	}

	with(objNormal){
		if(other.step==0)	dir = other.dir;
		if(other.dir) x = other.x+12;
		else x = other.x-12;
		y = other.y;

		if(global.HP[global.chara]<=0 && !global.retry){
			quake(50,15);
			sound_play(global.SndHit_06);
			step = 0;
			deadkind = 31;
			alarm[11] = 1;
		}
	}

	if(!global.bind){bind = false;instance_change(objE21_Normal,false);}
	else {
		global.bind += 1.5;
		if(global.bind>100) global.bind = 100;
	}

	step += 1;
}
