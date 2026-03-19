{
	if(step == 4){
		use = false;
		alarm[0] = 120;
		col = collision_rectangle(x-8,y,x+8,y+60,objNormal,0,1);
		with(col){
			if(!inv){
				dmgkind = 11;
				deadkind = 61;
				cutkind = true;
				pow = 8;
				if(other.dir) direct = 80;
				else direct = rev_angle(80);
				Particle(global.SprEffect_Particle[20],x,y,40,50,50,0.98,0,180,1,10,10,20,0.1,0.9,0.4);
				global.HP[global.chara] -= 50+random(10);
				sound_play(global.SndHit_16);

				step = 0;
				if(global.HP[global.chara]<=0){
					alarm[11] = 1;
					with(other){
						if(!global.retry){
							global.bind = -100;
							step=0;
							image_index = 0;
							voice_play(VicNormalDmg(2));
							instance_change(objE52_Finish_1,false);
						}
					}
				}
				instance_change(objDamage,false);
			}
		}
	}

	if(step>16) instance_change(objE52_Normal,false);
	step += 1;
}
