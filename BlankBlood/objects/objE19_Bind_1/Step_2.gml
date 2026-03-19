{
	with(objNormal){
		dir = other.dir;
		if(other.dir) x = other.x;
		else x = other.x;
		y = other.y;

		if(Percentage(2)){
			image_index = 0;
			Particle(global.SprEffect_Particle[21],x,y,2,5,5,0.98,260,20,0,1,10,20,0.1,0.4,0.2);
		}
		global.HP[global.chara] -= 0.1;
	}

	if(step > 80){
		global.bind = 100;
		quake(30,30);
		voice_play(VicElectricDmg(0));
		sound_play(global.VicDmg_58[global.chara]);
		sound_play(global.SndHit_23);sound_play(global.SndHit_24);
		sound_loop(global.SndHit_22);
		instance_change(objE19_Bind_2,false);
	}
	if(!global.bind){bind = false;instance_change(objE19_Normal,false);}
	else {
		global.bind += 0.4;
		if(global.bind>100) global.bind = 100;
	}

	step += 1;
}
