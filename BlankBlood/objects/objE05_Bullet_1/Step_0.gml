
	col = collision_rectangle(x,y,xprevious,y+8,objNormal,0,1);
	with(col){
		if(!inv){
			dmgkind = 11;
			deadkind = 10;
			pow = 8;
			if(other.hspd) direct = 10;
			else direct = rev_angle(10);
			global.HP[global.chara] -= 5+random(10);
			Particle(global.SprEffect_Particle[20],x,y,abs(other.hspd),50,50,0.98,direct,20,abs(other.hspd/2),10,10,20,0.1,0.9,0.4);
			sound_play(global.SndHit_02);
				step = 0;
			if(global.HP[global.chara]<=0) alarm[11] = 1;
			with(other){alarm[11] = 1};
			instance_change(objDamage,false);
		}
	}
