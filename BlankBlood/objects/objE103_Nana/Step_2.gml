var __b__;
__b__ = action_if_variable(mode, "wait", 0);
if __b__
{
if(!global.retry){
	if(HP!=preHP){
		if(Percentage(60)){
			HP=preHP;
			switch (round(random(2)))
			{
			case 0: sound_play(global.SndSwing_1); break;
			case 1: sound_play(global.SndSwing_2); break;
			case 2: sound_play(global.SndSwing_3); break;
			default: break;
			}

			if(bullet && gun_index == 0 || gun_index == 11){
				motion = 1;
				step = 0;
				mode = "attack";
			}
		}
	}

	if(Percentage(1) || !place_free(x+hspd*3,y)) if(!air) vspeed = -20;
	with(objNormal){
		if(!air){
			with(other){
				if(!air && y>other.y+64) vspeed = -16;
			}
		}
	}

	if(300>dis && dis>120){
		move = 1;
		if(bullet){
			if(pos){
				dir = 1;
				dash = 1;
				hspd = 6;
			}else{
				dir = 0;
				dash = 1;
				hspd = -6;
			}
		}else{
			if(!pos){
				dir = 1;
				dash = 1;
				hspd = 6;
			}else{
				dir = 0;
				dash = 1;
				hspd = -6;
			}
			if(Percentage(5)){
				motion = 2;
				step = 0;
				mode = "attack";
			}
		}
	}else if(dis>=300){
		move = 1;
		if(pos){
			dir = 1;
			hspd = 4;
		}else{
			dir = 0;
			hspd = -4;
		}
		if(gun_index == 11){
			motion = 2;
			step = 0;
			mode = "attack";
		}
	}else if(dis<100){
		move = 1;
		if(!pos){
			dir = 1;
			dash = 1;
			hspd = 8;
		}else{
			dir = 0;
			dash = 1;
			hspd = -8;
		}

		if(gun_index == 0 || gun_index == 11 && Percentage(5)){
			if(bullet) motion = 1;
			else motion = 2;
			step = 0;
			mode = "attack";
		}
	}else{
		if(gun_index == 0 || gun_index == 11 && Percentage(10)){
			if(bullet) motion = 1;
			else motion = 2;
			step = 0;
			mode = "attack";
		}
	}
}
}
__b__ = action_if_variable(mode, "attack", 0);
if __b__
{
{
	var inst;
	switch (motion)
	{
	case 1:
		if(HP!=preHP){
			if(Percentage(40)){
				HP=preHP;
				switch (round(random(2)))
				{
				case 0: sound_play(global.SndSwing_1); break;
				case 1: sound_play(global.SndSwing_2); break;
				case 2: sound_play(global.SndSwing_3); break;
				default: break;
				}
			}
		}

		if(300>dis && dis>120){
			move = 1;
			if(pos){
				dir = 1;
				dash = 1;
				hspd = 6;
			}else{
				dir = 0;
				dash = 1;
				hspd = -6;
			}
		}else if(dis>=300){
			move = 1;
			if(pos){
				dir = 1;
				hspd = 4;
			}else{
				dir = 0;
				hspd = -4;
			}
		}else if(dis<100){
			move = 1;
			if(!pos){
				dir = 1;
				dash = 1;
				hspd = 9;
			}else{
				dir = 0;
				dash = 1;
				hspd = -9;
			}
		}

		if(step == 0){
			bullet -= 1;
			inst = instance_create(x,y,objE103_Bullet);
			inst.direction = gun_dir;
			inst.alarm[0] = 1;
			sound_play(global.SndShot_1);
			inst = instance_create(x,y,objN_Case);
			inst.kind = 1;
		}
		gun_index += 1;
		if(gun_index>10){
			if(bullet) gun_index = 0;
			else gun_index = 11;

			step = 0;
			mode = "wait"
		}
	break;
	case 2:
		bullet = 8;
		if(step == 12){
			if(dir) inst = instance_create(x+20,y,objN_Case);
			else inst = instance_create(x-20,y,objN_Case);
			inst.kind = 2;
		}else if(step == 20){
			sound_play(global.SndReload_1);
		}else if(45<step){
			sound_play(global.SndReload_2);
			if(bullet)gun_index = 0;
			else gun_index = 11;
			step = 0;
			mode = "wait"
		}
	break;
	default: break;
	}

	if(step==1 && !global.clone) alarm[11] = 1;
	step+=1;
}

}
__b__ = action_if_variable(mode, "damage", 0);
if __b__
{
{
	if(step==0)voice_play2(VicNormalDmg(0),1);
	if(step>12){
		gun_index = 0;
		step = 0;
		mode = "wait"
	}
	step+=1;
}

}
image_blend = color;
if(HP!=preHP){
	image_blend = c_red;
	sound_atk(1);
	if(Percentage(100)){
		image_index = 0;
		motion = 11+10*round(random(1));
		step = 0;
		mode = "damage";
	}
}
preHP = HP;
action_inherited();
