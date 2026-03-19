{
	with(objNormal){
		dir = !other.dir;
		y = other.y;
		if(dir) x = other.x+10;
		else x = other.x-10;

		if(other.step mod 20 == 0 && other.step){
			if(Percentage(50) && global.HP[global.chara]) voice_play(VicNormalDmg(0));
			quake(20,10);
			if(dir) Effect(x-16-random(20),y+32-random(6),1);
			else Effect(x+16+random(20),y+32-random(6),1);
			if(Percentage(50)) sound_play(global.SndHit_04);
			else sound_play(global.SndHit_10);

			image_index = 4;
			global.bind += 7;
			Particle(global.SprEffect_Particle[20],x-10+dir*20,y,10,50,50,0.98,0,180,5,10,10,20,0.1,0.5,0.4);
			global.HP[global.chara] -= 5;
			if(global.HP[global.chara]<=0){
				step = 0;
				deadkind = 21;
				cutkind = 0;
				if(!inv){
					alarm[11] = 1;
					voice_play(VicNormalDmg(1));
				}
			}
		}
	}

	if(step == 0){
		step = 6;
		image_index = 0;
	}

	if(!global.bind){bind = false;instance_change(objE10_Normal,false);}
	else {
		global.bind += 0.5;
		if(global.bind>100) global.bind = 100;
	}

	step += 1;
}
