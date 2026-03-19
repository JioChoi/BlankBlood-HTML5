{
	with(objNormal){
		if(other.dir) x = other.x;
		else x = other.x;
		y = other.y;
		global.bind = 100;
	}

	HP = 1000;
	if(image_index == 8){
		Effect(x-10+random(20),y-10+random(20),1);
		quake(20,10);
		Flash(c_red,0.5,0.01);
		Particle(global.SprEffect_Particle[21],x,y,10,5,5,0.98,0,180,0,3,10,20,0.1,0.1,0.4);
		global.fdown += 200;
		global.bind += 20;
		voice_play(VicNormalDmg(2));
		sound_play(global.SndHit_00);
		sound_play(global.SndHit_09);
	}

	if(image_index == 38){
		Effect(x-10+random(20),y-10+random(20),1);
		quake(20,10);
		Flash(c_red,0.5,0.01);
		Particle(global.SprEffect_Particle[21],x,y,10,5,5,0.98,0,180,0,3,10,20,0.1,0.1,0.4);
		global.fdown += 200;
		global.bind += 20;
		voice_play(VicNormalDmg(0));
		sound_play(global.SndHit_19);
	}

	if(image_index > 8 && Percentage(5)) Particle(global.SprEffect_Particle[21],x,y,5,5,5,0.98,0,180,0,3,10,20,0.1,0.1,0.4);
	image_speed = 0.25;

	if(image_index > 60){
		with(objNormal){	
			dmgkind = 11;
			deadkind = 101;
			downkind = 10;
			step = 0;
			inv = 1;
			global.bind = 100;
			image_alpha = 1;
			dashKey = 0;
			dash = false;
			crouch = false;
			cutkind = 0;
			image_index = 0;
			alarm[11] = 1;
		}
		instance_change(objE23_Normal,false);
	}
	step += 1;
}
