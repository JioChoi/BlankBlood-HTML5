{
	with(objNormal){
		visible = true;
		depth = -1001
		inv = true;
		dir = 0;
		x = other.x;
		y = other.y;
		global.HP[global.chara] -= 0.3;
		if(global.HP[global.chara]<=0 && !global.retry){
			voice_play(VicNormalDmg(2));
			Flash(c_black,0.01,-0.001);
			step = 0;
			deadkind = 91;
			cutkind = 0;
			alarm[11] = 1;
		}
	}

	if(step == 0){
		sound_play(global.SndHit_21);
		fl = instance_create(x,y,objE22_Fluid);
	}
	with(fl){image_index = other.image_index}

	if(!global.bind && !global.retry){
		with(objE22_Fluid){instance_destroy()}
		with(objNormal){
			Flash(c_black,1,0.1);
			Particle(global.SprEffect_Particle[21],x,y-32,30,50,50,0.98,80,20,5,10,10,20,0.1,0.4,0.2);
			vspeed = -20;
			x = other.x-1+random(2);
			y = other.y-1+random(2);
		}
		bind = false;instance_change(objE22_Normal,false);
	}else{
		global.bind += 2;
		if(global.bind>100) global.bind = 100;
	}
	step += 1;
}
