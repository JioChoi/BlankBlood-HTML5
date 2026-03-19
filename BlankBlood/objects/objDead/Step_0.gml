var __b__;
__b__ = action_if_variable(global.joypad, 1, 0);
if __b__
{
__b__ = action_if_variable(global.Button[global.key[20]], 2, 0);
if __b__
{
{
__b__ = action_if_variable(global.retry, true, 0);
if __b__
{
{
global.bullet = 8;
DataLoad();
}
}
{
	var inst;
	if(step == 0){
		inv = 1;
		global.bind = true;
		global.retry = true;
		image_alpha = 1;
		image_index = 0;
	}

	switch (deadkind)
	{
	case 0:
		instance_change(objDamage,false);
		break;
	case 10:
		if(step == 0){quake(50,15);Effect(x,y,1);}

		global.bind = 0;
		image_speed = 0.25;
		if(image_index > 5){
			if(Percentage(50)) deadkind = 11;
			else deadkind = 12;
			image_index = 0;
		}

		if(step == 0 && Percentage(33)){
			voice_play(VicNormalDmg(1));
			deadkind = 20;
		}else if(step == 0 && cutkind == 1){
			if(Percentage(80)){
				inst = instance_create(x,y,objCut);
				inst.cutkind = cutkind;
				inst.dir = dir;
			}else{
				voice_play(VicNormalDmg(1));
				cutkind = 0;
			}
		}else if(step == 0) voice_play(VicNormalDmg(1));

		break;
	case 11:
		global.bind = 0;
		if(image_index > 4){
			image_index = 4;
			image_speed = 0;
		}else image_speed = 0.25;
		break;
	case 12:
		global.bind = 0;
		if(image_index > 7){
			image_index = 7;
			image_speed = 0;
		}else image_speed = 0.25;
		break;
	case 13:
		if(step == 0){quake(50,15);Effect(x,y,1);}
		global.bind = 0;
		image_speed = 0.25;
		if(image_index > 5){
			if(Percentage(50)) deadkind = 11;
			else deadkind = 12;
			image_index = 0;
		}
		if(step == 0 && cutkind == 1){
		}
		break;
	case 20:
		global.bind = 0;
		if(image_index > 23){
			image_index = 23;
			image_speed = 0;
		}else image_speed = 0.25;
		break;
	case 21:
		depth = 1;
		if(step == 0){
			inv = 1;
			image_alpha = 1;
			image_index = 0;
		}
		if(image_index > 4){
			image_index = 4;
			image_speed = 0;
		}else image_speed = 0.25;
		break;
	case 22:
		depth = 1;
		if(step == 0){
			inv = 1;
			image_alpha = 1;
			image_index = 4;
		}
		if(image_index > 23){
			image_index = 23;
			image_speed = 0;
		}else image_speed = 0.25;
		break;
	case 31:
 		if(step == 0){quake(50,15);Effect(x,y,1);}
		if(step == 0) voice_play(VicBind(1));

		depth = 1;
		if(image_index > 22){
			image_index = 22;
			image_speed = 0;
			if(Percentage(5)) image_index = 21;
		}else image_speed = 0.25;
		break;
	case 41:
		global.retry = true;
		if(step == 0) voice_play(VicFacehug(1));
		depth = 1;
		if(image_index > 43){
			image_speed = 0;
			image_alpha = 0;
		}else image_speed = 0.2;
		break;
	case 61:
		if(image_index>5) image_index = 0;
		if(image_index==0){
			image_speed = 0;
		}else image_speed = 0.5;
		depth = 1;
		break;
	case 70:
		global.bind = 0;
		if(step == 0) voice_play(VicNormalDmg(1));
		depth = -2;
		image_speed = 0.25;

		if(cutkind == 0){
			if(image_index>29) image_index = 13;
		}else{
			if(global.chara){
				if(image_index>12 && Percentage(3)) image_index = 7;
				else if(image_index>12 && Percentage(3)) image_index = 11;
				if(image_index>12) image_index = 12;
			}else{
				if(image_index>19 && Percentage(30)) image_index = 18;
				else if(image_index>19 && Percentage(5)) image_index = 13;
				if(image_index>20) image_index = 11;
			}
		}
		break;
	case 81:
		if(image_index>41) image_speed = 0;
		else image_speed = 0.25;
		if(image_index>38 && Percentage(3)) image_index = 38;
		depth = 1;
		break;
	case 82:
		if(step == 0){
			global.retry = true;
			image_alpha = 1;
			image_index = 18;
		}
		if(image_index>41) image_speed = 0;
		else image_speed = 0.25;
		if(image_index>38 && Percentage(3)) image_index = 38;
		depth = 1;
		break;
	case 91:
		if(image_index>15){image_speed = 0;}
		else image_speed = 0.25;
		if(image_index>8 && Percentage(3)) image_index = 9;
		break;
	case 101:
	if(!global.chara){
		if(round(image_index)==3){image_speed = 0;if(!air) image_index=4;}
		else image_speed = 0.25;

		if(image_index>78){
			image_index = 78;
			image_speed = 0;
			if(Percentage(3)){
				image_index = 72;
				image_speed = 0.25;
			}
		}
		if(step==20){voice_play(59);Flash(c_red,0.5,0.05);}
		if(step==48*4) image_index = 19;
		if(step==75*4){
			for(i=0;i<20;i+=1){
				inst = instance_create(x,y,objE24_Normal);
				inst.direction = 45+random(90);
				inst.speed = 5+random(5);
			}
			Particle(global.SprEffect_Particle[20],x,y,60,50,50,0.98,45,90,10,20,10,20,0.4,0.8,0.6);
			image_index = 55;
			Flash(c_red,1,0.05);
			global.HP[global.chara] = -10;
			quake(50,25);Effect(x,y,1);
		}
		if(step>20 && step<75*4 && Percentage(2)){quake(15,15);Flash(c_red,0.5,0.05);}
	}else{
		if(air){if(image_index>1) image_index = 0;}
		else{
			if(image_index<2){image_index = 2;image_speed = 0.25;}
			if(image_index==26){voice_play(59);Flash(c_red,0.5,0.05);}
			if(image_index==90){
				for(i=0;i<20;i+=1){
					inst = instance_create(x,y,objE24_Normal);
					inst.direction = 45+random(90);
					inst.speed = 5+random(5);
				}
				Particle(global.SprEffect_Particle[20],x,y,60,50,50,0.98,45,90,10,20,10,20,0.4,0.8,0.6);
				Flash(c_red,1,0.05);
				global.HP[global.chara] = -10;
				quake(50,25);Effect(x,y,1);
			}
			if(image_index>26 && image_index<90 && Percentage(2)){quake(15,15);Flash(c_red,0.5,0.05);}
		}
		if(image_index>130){
			image_index = 130.5;
			image_speed = 0;
			if(Percentage(3)){
				image_index = 128;image_speed = 0.25;
			}
		}
	}
		break;
	default: break;
	}
	step += 1;
}
	switch (deadeffect)
	{
	case 1:
		if(step<30){
			effect_create_above(ef_smokeup,x-40+random(40),y+48-40+random(40),round(random(1)),c_black);
			effect_create_above(ef_smokeup,x-40+random(40),y+48-40+random(40),round(random(1)),c_red);
			effect_create_above(ef_smokeup,x-40+random(40),y+48-40+random(40),round(random(1)),33023);
		}
		if(Percentage(10))effect_create_above(ef_smokeup,x-40+random(40),y+48-40+random(40),round(random(1)),c_black);
		break;
	}
}
}
}
