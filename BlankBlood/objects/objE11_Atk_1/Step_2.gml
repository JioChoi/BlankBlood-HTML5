{
	with(objNormal){
		if(other.NoticeZone){
			if(x<other.x){
				other.dir = 0;
			}else if(x>other.x){
				other.dir = 1;
			}
		}
	}

	if(!dir){
		if( place_free(x-run,y) ) x -= run;
		move = true;
	}else{
		if( place_free(x+run,y) ) x += run;
		move = true;
	}

	if(step mod 2 == 0){
		col = collision_rectangle(x,y,x+hspd*5,y+30,objNormal,0,1);
		with(col){
			if(!inv){
				dmgkind = 211;
				deadkind = 10;
				pow = 8;
				if(other.dir) direct = 10;
				else direct = rev_angle(10);
				Particle(global.SprEffect_Particle[20],x,y,5,50,50,0.98,0,360,5,10,10,20,0.1,0.9,0.4);
				global.HP[global.chara] -= 5+random(2);
				sound_play(global.SndHit_10);

				step = 0;
				if(global.HP[global.chara]<=0) alarm[11] = 1;
				instance_change(objDamage,false);
			}
		}
	}

	if(step>80 && !air) instance_change(objE11_Normal,false);
	step += 1;
}
