if(mode==0){
	with(objNormal){
		x = other.x;
		y = other.y;
	}

	if(step mod 10 == 0){
		global.bind += 10
		Particle(global.SprEffect_Particle[21],x,y-32,10,50,50,0.98,80,20,5,10,10,20,0.1,0.4,0.2);
		sound_play(global.SndHit_08);
		quake(5,5);
		global.HP[global.chara] -= random(2);
	}
	if(step > 100){
		step = 0;
		image_index = 0;
		global.bind = 100;
		mode = 1;
		quake(10,10);
		sound_play(global.SndHit_09);
		voice_play(VicFacehug(1));
	}

	if(!global.bind){
		with(objNormal){
			x = other.x-1+random(2);
			y = other.y-1+random(2);
		}
		bind = false;instance_change(objE22_Normal,false);
	}else{
		global.bind += 2;
		if(global.bind>100) global.bind = 100;
	}
}else if(mode==1){
	global.scr_dark = step/60

	with(objNormal){
		image_index = 2;
		x = other.x-1+random(2);
		y = other.y+5-random(2);
		if(other.step==45)visible = 0;
	}

	if(step > 60){
		with(objNormal){bindkind = 7;}
		step = 0;
		image_index = 0;
		global.bind = 100;
		mode = 1;
		quake(10,10);
		global.scr_dark = 0;
		instance_change(objE22_Bind_3,false);
	}

	global.bind = 100;
	if(image_index>11){
		image_index = 11;
		image_speed = 0;
	}
}
step += 1;

