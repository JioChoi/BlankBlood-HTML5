{
	with(objNormal){
		if(other.step==0)	dir = other.dir;
		x = other.x;
		y = other.y;
		if(other.step mod 40 == 0 && other.step != 0){
			if(Percentage(50)) voice_play(VicNormalDmg(0));
			sound_play(global.SndHit_05);
			image_index = 0;
		}

		global.HP[global.chara] -= 0.25;
		if(global.HP[global.chara]<=0){
			step = 0;
			deadkind = 31;
			alarm[11] = 1;
		}
	}

	if(global.HP[global.chara]<=0){
		step = 0;
		if(Percentage(50)){
			with(objNormal){cutkind = true};
			instance_change(objE04_Finish_1,false);
		}else instance_change(objE04_Finish_2,false);
	}

	if(!global.bind){bind = false;instance_change(objE04_Normal,false);}
	else {
		global.bind += 1.2;
		if(global.bind>100) global.bind = 100;
	}

	step += 1;
}
