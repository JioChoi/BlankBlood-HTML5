{
	with(objNormal){
		dir = !other.dir;
		if(other.dir) x = other.x+14;
		else x = other.x-14;
		y = other.y;

		if(Percentage(5)) image_index = 0;

		if(other.step > 160){
			step = 0;
			deadkind = 13;
			cutkind = 1;
			global.bind = 0;
			alarm[11] = 1;
		}
	}

	if(image_index > 14){
		image_speed = 0;
		image_index = 14;
	}

	if(step == 65){
		sound_play(global.SndHit_09);
		voice_play(VicFacehug(0));
	}

	if(step > 160){
		step = 0;
		image_index = 0;
		instance_change(objE09_Finish_1,false);
	}

	if(!global.bind && global.HP[global.chara]>0){bind = false;instance_change(objE09_Normal,false);}
	else {
		global.bind += 1.7;
		if(global.bind>100) global.bind = 100;
	}


	step += 1;
}
