image_speed = 0.5;
if(image_index == 2) sound_play(global.SndBullet);
else if(image_index == 5.5) inst = instance_create(x,y-32,objR_Pine);
else if(image_index == 6){
	if(b1){
		if(up) throw_dir += 2;
		if(down) throw_dir -= 2;
		if(dir){
			with(inst){speed=0;x=other.x-1;y=other.y-32;image_index=0;visible=false;}
			if(left) throw_pow -= 1;
			if(right) throw_pow += 1;
		}else{
			with(inst){speed=0;x=other.x+1;y=other.y-32;image_index=0;visible=false;}
			if(left) throw_pow += 1;
			if(right) throw_pow -= 1;
		}

		if(throw_dir>80) throw_dir = 80;
		if(throw_dir<-80) throw_dir = -80;
		if(throw_pow>20) throw_pow = 20;
		if(throw_pow<5) throw_pow = 5;

		image_speed = 0;
		image_index = 6;
	}else  image_speed = 0.5;
}else if(6<image_index && image_index < 9){
	with(inst){speed=0;x=other.x+1;y=other.y-32;image_index=0;visible=false;}
}else if(image_index == 9){
	switch (round(random(2)))
	{
	case 0: sound_play(global.SndSwing_1); break;
	case 1: sound_play(global.SndSwing_2); break;
	case 2: sound_play(global.SndSwing_3); break;
	default: break;
	}

	with(inst){
		speed = other.throw_pow;
		if(!other.dir) direction = rev_angle(other.throw_dir);
		else direction = other.throw_dir;
	}

}else if(11<image_index){
	combo = 0;
	instance_change(objNormal,false);
}
step += 1;
