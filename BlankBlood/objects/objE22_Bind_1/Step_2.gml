{
	with(objNormal){
		dir = 0;
		x = other.x;
		y = other.y-26+other.bindy;
	}

	if(Percentage(5)) Particle(global.SprEffect_Particle[21],x,y-32,10,50,50,0.98,80,20,5,10,10,20,0.1,0.4,0.2);
	        if(step == 77) {bindy = 6;sound_play(global.SndHit_09);	if(Percentage(70)) voice_play(VicNormalDmg(0));quake(10,15);global.bind += 60;global.HP[global.chara] -= random(15);}
	else if(step == 78) bindy = 8;
	else if(step == 79) bindy = 9;
	else if(step == 80) bindy = 10;
	else if(step == 177){bindy = 11;sound_play(global.SndHit_09);if(Percentage(70)) voice_play(VicNormalDmg(0));quake(10,15);global.bind += 60;global.HP[global.chara] -= random(15);}
	else if(step == 178) bindy = 13;
	else if(step == 179) bindy = 15;
	else if(step == 180) bindy = 16;
	else if(step == 287){bindy = 17;sound_play(global.SndHit_09);if(Percentage(70)) voice_play(VicNormalDmg(0));quake(10,15);global.bind += 60;global.HP[global.chara] -= random(15);}
	else if(step == 288) bindy = 19;
	else if(step == 289) bindy = 20;
	else if(step == 290) bindy = 21;
	else if(step == 397){bindy = 22;sound_play(global.SndHit_09);if(Percentage(70)) voice_play(VicFacehug(0));quake(10,15);global.bind += 60;global.HP[global.chara] -= random(15);}
	else if(step == 398) bindy = 24;
	else if(step == 399) bindy = 25;
	else if(step == 400) bindy = 26;

	if(step > 500){
		step = 0;
		image_index = 0;
		global.bind = 100;
		instance_change(objE22_Bind_2,false);
	}

	if(!global.bind){
		with(objNormal){
			x = other.x;
			y = other.y;
		}
		bind = false;instance_change(objE22_Normal,false);
	}else{
		global.bind += 2.5;
		if(global.bind>100) global.bind = 100;
	}
	step += 1;
}
