{
	with(objNormal){
		if(other.step==0){
			image_index = 0;
			Particle(global.SprEffect_Particle[20],x,y,30,50,50,0.98,0,360,5,10,10,20,0.1,0.9,0.4);
			sound_play(global.SndHit_07);
			sound_play(global.SndHit_15);
		}
		global.HP[global.chara] = 0;
		dir = !other.dir;
		if(other.dir) x = other.x+16;
		else x = other.x-16;
		y = other.y;
	}

	if(image_index == 8) image_speed = 0;
	else image_speed = 0.25;

	if(image_index > 47 ){
		image_index = 35;
		image_speed = 0;
	}

	step += 1;
}
