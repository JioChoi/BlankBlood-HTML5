{
	with(objNormal){
		dir = !other.dir;
		if(other.dir) x = other.x+16;
		else x = other.x-16;
		y = other.y;

		if(Percentage(5)){
			image_index = 0;
			Particle(global.SprEffect_Particle[21],x,y,2,5,5,0.98,260,20,0,1,10,20,0.1,0.4,0.2);
		}
		global.HP[global.chara] -= 0.1;
		if(global.HP[global.chara]<=0 || other.step > 80){
			step = 0;
			deadkind = 41;
			alarm[11] = 1;
		}
	}

	if(global.HP[global.chara]<=0 || step > 80){
		sound_play(global.SndHit_21);
		quake(5,5);
		effect_create_above(ef_smokeup,x-20+random(40),y-20+random(40),round(random(1)),c_white);
		effect_create_above(ef_smokeup,x-20+random(40),y-20+random(40),round(random(1)),c_white);
		effect_create_above(ef_smokeup,x-20+random(40),y-20+random(40),round(random(1)),c_white);
		effect_create_above(ef_smokeup,x-20+random(40),y-20+random(40),round(random(1)),c_white);
		instance_change(objE06_Finish_1,false);
	}
	if(!global.bind){bind = false;instance_change(objE06_Normal,false);}
	else {
		global.bind += 0.4;
		if(global.bind>100) global.bind = 100;
	}

	step += 1;
}
