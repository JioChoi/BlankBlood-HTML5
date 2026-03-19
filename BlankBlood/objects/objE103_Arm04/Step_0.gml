	if(step == 13){
		if(Percentage(95)) step = 11;
	}else if(step == 23){
		col = collision_circle(x,y,5,objNormal,0,1);
		with(col){
			if(global.bind){
				deadkind = 81;
				cutkind = 0;
				Particle(global.SprEffect_Particle[20],x,y,50,50,50,0.98,0,180,5,10,10,20,0.1,0.9,0.4);
				global.HP[global.chara] -= 25+random(10);
				sound_play(global.SndHit_15);
				quake(10,10);
				Flash(c_red,0.3,0.05);
				step = 1;
				if(global.HP[global.chara]<=0){
					voice_play(VicElectricDmg(0));
					gravity = 0;speed = 0;
					sound_play(global.SndHit_16);
					alarm[11] = 1;
				}else voice_play(VicNormalDmg(0));
			}
		}
	}else if(step==40){if(Percentage(95)) step = 39;}
	else if(step==52 && global.bind && !instance_exists(objE103_ArmFinish01)) step = 16;
	else if(step==60) instance_destroy();
	step+=1;
