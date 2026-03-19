{
	depth = -3;
	with(objNormal){
		depth = -2;
		if(other.step==0){
			quake(50,15);
			sound_play(global.SndHit_15);
		}
		gravity = 0;
		speed = 0;
		x = other.x;
		y = other.y-110;
		Particle(global.SprEffect_Particle[20],x-4,y-12,global.blood/3,20,0,0.98,80,20,0,8,10,20,0.1,0.7,0.5);
		Particle(global.SprEffect_Particle[20],x,y+20,global.blood/2,5,0,0.98,60,60,0,8,10,20,0.1,0.7,0.5);
		global.blood -= 0.03;
		if(Percentage(2)) image_index += 1;
	}

	step += 1;
}
