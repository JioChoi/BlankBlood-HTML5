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
		y = other.y-32+other.image_index;
		if(Percentage(2)) image_index += 1;
	}

	step += 1;
}
