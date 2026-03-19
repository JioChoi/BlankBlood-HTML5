{
	with(objNormal){
		if(other.step==8){
			if(x<other.x){
				other.dir = 0;
				other.hspd = -10+random(5);
			}else if(x>other.x){
				other.dir = 1;
				other.hspd = 10+random(5);			
			}
		}
	}

	if(step==11){
		if(dir) col = collision_rectangle(x,y,x+96,y-60,objNormal,0,1);
		else col = collision_rectangle(x,y,x-96,y-60,objNormal,0,1);
		with(col){
			if(!inv){
				dmgkind = 11;
				deadkind = 10;
				cutkind = 1;
				pow = 4;
				if(other.dir) direct = 10;
				else direct = rev_angle(10);
				Particle(global.SprEffect_Particle[20],x,y,50,50,50,0.98,0,180,5,10,10,20,0.1,0.9,0.4);
				global.HP[global.chara] -= 25+random(10);
				sound_play(global.SndHit_15);

				step = 0;
				if(global.HP[global.chara]<=0){
					sound_play(global.SndHit_16);
					alarm[11] = 1;
				}
				instance_change(objDamage,false);
			}
		}
	}

	if(step>30 && !air) instance_change(objE14_Normal,false);
	step += 1;
}
