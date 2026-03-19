{
	if(step == 3){
		col = collision_line(x,y,x,y-150,objNormal,0,1);
		with(col){
			if(!inv){
				dmgkind = 11;
				deadkind = 61;
				cutkind = true;
				pow = 8;
				direct = 90;
				Particle(global.SprEffect_Particle[20],x,y,40,50,50,0.98,0,180,1,10,10,20,0.1,0.9,0.4);
				global.HP[global.chara] -= 30+random(10);
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
							instance_change(objE103_ArmFinish01,false);
						}
					}
				}
				instance_change(objDamage,false);
			}
		}
	}

	if(step>17) instance_destroy();
	step += 1;
}
