{
	with(objNormal){
		if(other.step==11){
			if(x<other.x){
				other.dir = 0;
			}else if(x>other.x){
				other.dir = 1;		
			}
		}
	}

	if(step==11){
		if(dir) col = collision_rectangle(x,y,x+64,y+30,objNormal,0,1);
		else col = collision_rectangle(x,y,x-64,y+30,objNormal,0,1);
		with(col){
			if(!inv){
				if(global.HP[global.chara]/global.HPMAX[global.chara] < 0.66){
					dmgkind = 22;
					deadkind = 0;
					pow = 40;
					if(other.dir) direct = 10;
					else direct = rev_angle(10);
				}else{
					dmgkind = 21;
					deadkind = 10;
					pow = 30;
					if(other.dir) direct = 0;
					else direct = rev_angle(0);
				}
				Particle(global.SprEffect_Particle[21],x,y,20,50,50,0.98,0,180,5,10,10,20,0.1,0.4,0.2);
				cutkind = 0;

				global.HP[global.chara] -= 20+random(5);
				sound_play(global.SndHit_04);

				step = 0;
				if(global.HP[global.chara]<=0) alarm[11] = 1;
				instance_change(objDamage,false);
			}
		}
	}

	if(step>17 && !air) instance_change(objE03_Normal,false);
	step += 1;
}
