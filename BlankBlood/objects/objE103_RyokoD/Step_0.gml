	air_check();
	if(air){
		gravity = global.g;
		gravity_direction = 270;
	}else{
		gravity = 0;
		gravity_direction = 0;
	}
{
	var inst;
	if(step == 0){
		image_alpha = 1;
		image_index = 0;
	}
	switch (motion)
	{
	case 10:
		if(step == 0){quake(50,15);Effect(x,y,1);}
		image_speed = 0.25;
		if(image_index > 5){
			if(Percentage(50)) motion = 11;
			else motion = 12;
			image_index = 0;
		}
		if(step == 0 && Percentage(33)){
			voice_play2(VicNormalDmg(1),0);
			motion = 20;
		}else if(step == 0 && !global.chara){
			if(Percentage(80)){
				cutkind = 1;
				inst = instance_create(x,y,objE103_Cut);
				inst.chara=0;
				inst.cutkind = cutkind;
				inst.dir = dir;
			}else{
				voice_play2(VicNormalDmg(1),0);
				cutkind = 0;
			}
		}else if(step == 0) voice_play2(VicNormalDmg(1),0);

		break;
	case 11:
		if(image_index > 4){
			image_index = 4;
			image_speed = 0;
		}else image_speed = 0.25;
		break;
	case 12:
		if(image_index > 7){
			image_index = 7;
			image_speed = 0;
		}else image_speed = 0.25;
		break;
	case 13:
		if(step == 0){quake(50,15);Effect(x,y,1);}
		image_speed = 0.25;
		if(image_index > 5){
			if(Percentage(50)) motion = 11;
			else motion = 12;
			image_index = 0;
		}
		break;
	case 20:
		if(image_index > 23){
			image_index = 23;
			image_speed = 0;
		}else image_speed = 0.25;
		break;
	default: break;
	}
	step += 1;
}

