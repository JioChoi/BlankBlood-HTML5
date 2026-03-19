{
	with(objNormal){
		dir = other.dir;
		if(other.step<162){
			y = other.y+52;
			x = other.x-20;
		}else{
			y = other.y+52;
			x = other.x-5;
		}

		if(other.step == 160){
			step = 0;
			deadkind = 61;
			alarm[11] = 1;
		}
	}

	if(step==80){
		global.HP[global.chara] -= 40+random(10);
		global.bind = 100;
		image_index = 0;
		Effect(x,y+10+random(20),1);
		quake(20,5);
		voice_play(VicNormalDmg(0));
		Particle(global.SprEffect_Particle[21],x,y+32,10,5,5,0.98,0,180,0,3,10,20,0.1,0.1,0.4);
		sound_play(global.SndHit_15);
	}

	if(step<160){
		if(image_index<5) image_speed = 0.4;
		else image_speed = 0;
	}else{
		image_speed = 0.3;
		if(global.retry){
				if(step<280){
					if(Percentage(30)) Particle(global.SprEffect_Particle[21],x-8,y+60,3,1,1,0.6,265,10,0,1,10,20,0.1,0.1,0.2);
				}else if(step<320){
					if(Percentage(80)) Particle(global.SprEffect_Particle[21],x-8,y+60,3,1,1,0.6,265,10,0,1,10,20,0.1,0.1,0.2);
				}else if(step<380){
					if(Percentage(50)) Particle(global.SprEffect_Particle[21],x-8,y+60,3,1,1,0.6,265,10,0,1,10,20,0.1,0.1,0.2);
				}else if(step<440){
					if(Percentage(20)) Particle(global.SprEffect_Particle[21],x-8,y+60,3,1,1,0.6,265,10,0,1,10,20,0.1,0.1,0.2);
				}else if(Percentage(5)) Particle(global.SprEffect_Particle[21],x-8,y+60,3,1,1,0.6,265,10,0,1,10,20,0.1,0.1,0.2);
		}
		if(step mod 16 == 0){
			Particle(global.SprEffect_Particle[20],x,y+32,10,5,5,0.98,0,180,0,3,10,20,0.1,0.9,0.4);
			Particle(global.SprEffect_Particle[21],x,y+32,10,5,5,0.98,0,180,0,3,10,20,0.1,0.1,0.2);
			global.HP[global.chara] -= 5+random(5);
			sound_play(global.SndHit_08);
			quake(5,5);
			if(Percentage(50) && global.HP[global.chara]>-200) voice_play(VicNormalDmg(2));
			if(Percentage(20)) Effect(x,y+10+random(20),1);
			Flash(5640695,0.2,0.05);
		}
		with(objNormal){	image_index = other.image_index}
	}

	if(!global.bind){
		bind = false;
		use = false;
		alarm[0] = 40+random(40);
		instance_change(objE16_Normal,false);
	}else {
		global.bind += 0.5;
		if(global.bind>100) global.bind = 100;
	}

	step += 1;
}
