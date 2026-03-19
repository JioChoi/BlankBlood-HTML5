flag = 1;
//sound_play(global.SndShot_1);
move_contact_solid(direction,200);
x=x+10*cos(degtorad(direction));y=y-10*sin(degtorad(direction));

	col = collision_line(pre_x,pre_y,x,y,objNormal,0,1);
	with(col){
		if(!inv){
			dmgkind = 11;
			deadkind = 10;
			pow = 8;
			if(90<direction && direction<270) direct = 170;
			else direct = rev_angle(170);
			global.HP[global.chara] -= 10+random(10);
			Particle(global.SprEffect_Particle[20],x,y,0,50,50,0.98,direct,20,5,10,10,20,0.1,0.9,0.4);
			sound_play(global.SndHit_02);
				step = 0;
			if(global.HP[global.chara]<=0) alarm[11] = 1;
			with(other){alarm[11] = 1};
			instance_change(objDamage,false);
		}
	}
