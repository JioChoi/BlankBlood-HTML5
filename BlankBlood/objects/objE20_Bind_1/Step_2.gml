{
	with(objNormal){
		dir = !other.dir;
		if(other.dir) x = other.x;
		else x = other.x;
		y = other.y;


		global.HP[global.chara] -= 0.1;
		if(global.HP[global.chara]<=0){
			if(!global.retry){
				step = 0;
				deadkind = 82;
				alarm[11] = 1;
			}
		}else{
			if(Percentage(4)){
				image_index = 0;
				Particle(global.SprEffect_Particle[21],x,y,2,5,5,0.98,260,20,0,1,10,20,0.1,0.4,0.2);
			}
		}
	}

	if(image_index > 43){
		image_index = 28;
	}else if(32 > image_index && image_index > 31.6){
		global.HP[global.chara] -= 5;
		global.bind += 20;
		if(global.bind>100) global.bind = 100;
		quake(4,4);
		if(!global.retry) voice_play(VicFacehug(0));
		sound_play(global.SndHit_19);
	}else if(step == 80){
		global.bind += 20;
		voice_play(VicFacehug(0));
		sound_play(global.SndHit_00);
	}

	if(!global.bind){
		bind = false;
		if(step >150){
			with(objNormal){
				dmgkind = 11;
				deadkind = 10;
				downkind = 10;
				step = 0;
				inv = 1;
				global.bind = -100;
				global.fdown = 300;
				image_alpha = 1;
				dashKey = 0;
				dash = false;
				crouch = false;
				cutkind = 0;
				if(global.HP[global.chara]<=0) alarm[11] = 1;
				instance_change(objDown,false);
			}
		}
		instance_change(objE20_Normal,false);
	}else{
		global.bind += 0.4;
		if(global.bind>100) global.bind = 100;
	}

	step += 1;
}
