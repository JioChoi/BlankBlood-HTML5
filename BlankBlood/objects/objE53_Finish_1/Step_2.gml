{
	with(objNormal){
		if(other.step==0){
			sound_play(global.SndHit_03);
			sound_play(global.SndHit_05);
			sound_play(global.SndHit_06);
		}
		speed = 0;
		if(global.HP[global.chara]>0){
			quake(2,3);
			if(Percentage(2)) {
				Flash(c_red,0.2,0.05);
				voice_play(VicNormalDmg(2));image_index += 1;
				if(Percentage(50)) sound_play(global.SndHit_05);
				if(Percentage(50)) sound_play(global.SndHit_06);
			}
		}
	}
	global.HP[global.chara] -= random(0.8);

	if(global.HP[global.chara]<0 && current <= High){
		if(!v_flag && round(current) == High){
			with(objNormal) alarm[11] = 1;
			if(Percentage(70)) sound_play(global.SndHit_05);
			if(Percentage(70)) sound_play(global.SndHit_03);
			if(Percentage(70)) sound_play(global.SndHit_06);
			if(Percentage(70)) sound_play(global.SndHit_07);
			sound_play(global.SndHit_11);
			voice_play(55);
			quake(50,15);
			Flash(c_red,0.5,0.035);
			v_flag = 1;
		}
		if(Percentage(10)) sound_play(global.SndHit_05);
		if(Percentage(10)) sound_play(global.SndHit_06);
		current += random(0.2);
	}
	step += 1;
}
