{
	with(objNormal){
		if(other.step==0){
			dir = other.dir;
			quake(50,15);
			sound_play(global.SndHit_07);
		}
		x = other.x;
		y = other.y;
	}

	if(image_index > 39) image_index = 39;
	step += 1;
}
