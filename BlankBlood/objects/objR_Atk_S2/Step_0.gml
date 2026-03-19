image_speed = 0.5;
if(5<image_index && image_index<10){
	if(!b1){
		inst = instance_create(x,y,objR_Atk_S2E);
		inst.dir = dir;
		if(dir){
			inst.image_xscale = -1;
		}else{
			inst.image_xscale = 1;
		}
		image_index = 10;
		step += 1;
	}else{
		if(image_index>9){
			image_speed = 0;
			image_index = 9;
		}
	}
}else if(step==65){
	sound_play(global.SndBullet);
	if(b1){
		image_index = 0
		step = 0
	}else step += 1;
}else if(71<step){
	combo = 0;
	crouch = false;
	instance_change(objNormal,false);
}else{
	step += 1;
}

