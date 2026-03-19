{
	if(round(image_index) == 4){
		col = collision_rectangle(x-64,y,x+64,y-32,objNormal,0,1);
		with(col){
			if(!inv){
				global.bind = -100;
				dmgkind = 21;
				deadkind = 70;
				if(Percentage(70)){cutkind = 2;Particle(global.SprEffect_Particle[20],x,y,30,50,50,0.98,0,180,5,10,10,20,0.1,0.9,0.4);}
				else cutkind = 0;
				pow = 0;
				direct = 0;
				Particle(global.SprEffect_Particle[20],x,y,30,50,50,0.98,0,180,5,10,10,20,0.1,0.9,0.4);
				global.HP[global.chara] -= 55+random(10);
				sound_play(global.SndHit_01);

				step = 0;
				if(global.HP[global.chara]<=0){
					if(Percentage(70)){
						inst = instance_create(x,y,objCut);
						inst.cutkind = cutkind;
						inst.dir = dir;
					}

					sound_play(global.SndHit_15);
					alarm[11] = 1;
				}
				instance_change(objDamage,false);
			}
		}
	}

	if(image_index>20) instance_change(objE18_Normal,false);
	step += 1;
}
