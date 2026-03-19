{
	if(step == 5){
		use = false;
		alarm[0] = 120;
		if(dir) col = collision_rectangle(x,y-8,x+190,y+8,objNormal,0,1);
		else  col = collision_rectangle(x,y-8,x-190,y+8,objNormal,0,1);
		with(col){
			if(!inv){
				dmgkind = 21;
				deadkind = 31;
				cutkind = true;
				pow = 8;
				if(other.dir) direct = 0;
				else direct = rev_angle(0);
				Particle(global.SprEffect_Particle[20],x,y,60,50,50,0.98,0,180,1,10,10,20,0.1,0.9,0.4);
				global.HP[global.chara] -= 50+random(10);
				sound_play(global.SndHit_16);

				step = 0;
				if(global.HP[global.chara]<=0){
					alarm[11] = 1;
					with(other){
						step=0;
						image_index = 0;
						voice_play(VicNormalDmg(2));
						instance_change(objE54_Finish_1,false);
					}
				}
				instance_change(objDamage,false);
			}
		}
	}

	if(step>31) instance_change(objE54_Normal,false);
	step += 1;
}
