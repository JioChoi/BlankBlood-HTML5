{
	with(objNormal){
		if(other.step==0){
			image_index = 0;
			other.image_index = 0;
			sound_play(global.SndHit_07);
		}
		dir = !other.dir;
		if(other.dir) x = other.x+16;
		else x = other.x-16;
		y = other.y;
	}

	if(image_index == 20 ) sound_play(global.SndHit_09);
	if(image_index == 35 || image_index == 38 || image_index == 41 || image_index == 44) image_speed = 0;
	else if(image_index < 33 ) image_speed = 0.125;
	else image_speed = 0.2;

	if(image_index >= 35 ){
		global.HP[global.chara] -= 0.2;
		if(image_speed == 0){
			if(Percentage(global.HP[global.chara]/5)){
				switch (round(random(3)))
				{
				case 0: image_index = 36; break;
				case 1: image_index = 39; break;
				case 2: image_index = 42; break;
				case 3: image_index = 45; break;
				default: break;
				}
			}
		}
	}

	if(image_index > 47 ){
		image_index = 35;
		image_speed = 0;
	}

	step += 1;
}
