{
	with(objNormal){
		if(other.step==0){
			dir = other.dir;
			quake(50,15);
			sound_play(global.SndHit_06);
		}
		x = other.x;
		y = other.y;
	}

	if(image_index > 4) image_index = 4;
	step += 1;
}
