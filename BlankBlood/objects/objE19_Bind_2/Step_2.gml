{
	with(objNormal){
		dir = other.dir;
		if(other.dir) x = other.x;
		else x = other.x;
		y = other.y;
		image_blend = c_gray;
		if(other.count < 200) image_index = 1+random(5);
		global.HP[global.chara] -= random(1);
		if(global.HP[global.chara]<=0){
			if(!global.retry){
				step = 0;
				deadkind = 81;
				alarm[11] = 1;
			}
			if(!sound_isplaying(global.VicDmg_58[global.chara])) other.count += 1;
			if(other.count == 200){sound_stop(global.SndHit_22);sound_play(global.SndHit_21);image_index = 4;}
		}
	}
	if(!global.bind){bind = false;sound_stop(global.VicDmg_58[global.chara]);sound_stop(global.SndHit_22);instance_change(objE19_Normal,false);}
	else {
		global.bind += 1.5;
		if(global.bind>100) global.bind = 100;
	}
	if(count<200){
		if(Percentage(50) && count < 260) effect_create_above(ef_smokeup,x-40+random(40),y-40+random(40),round(random(1)),c_black);
		quake(2,2);
		if(Percentage(5)) Flash(c_white,0.8,0.1);
	}else{
		if(Percentage(20) && count < 260) effect_create_above(ef_smokeup,x-40+random(40),y-40+random(40),round(random(1)),c_black);

		if(count>350){
				if(count<480){
					if(Percentage(10)) Particle(global.SprEffect_Particle[21],x,y+16,3,1,1,0.6,265,10,0,1,10,20,0.1,0.1,0.2);
				}else if(count<520){
					if(Percentage(80)) Particle(global.SprEffect_Particle[21],x,y+16,3,1,1,0.6,265,10,0,1,10,20,0.1,0.1,0.2);
				}else if(count<580){
					if(Percentage(30)) Particle(global.SprEffect_Particle[21],x,y+16,3,1,1,0.6,265,10,0,1,10,20,0.1,0.1,0.2);
				}else if(count<640){
					if(Percentage(10)) Particle(global.SprEffect_Particle[21],x,y+16,3,1,1,0.6,265,10,0,1,10,20,0.1,0.1,0.2);
				}else if(Percentage(3)) Particle(global.SprEffect_Particle[21],x,y+16,3,1,1,0.6,265,10,0,1,10,20,0.1,0.1,0.2);
		}

		if(count>700){
			with(objNormal){
				speed = 0;
				step = 1;
				deadkind = 13;
				cutkind = 0;
				global.bind = -100;
				alarm[11] = 1;
			}
			instance_change(objE19_Normal,false);
		}
	}
	step += 1;
}
