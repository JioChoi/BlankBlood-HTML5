if(step != 0 && b1==2) combo = 1;

image_speed = 0.5;
if(3<image_index && image_index<12){
	if(!b1){
		inst = instance_create(x,y,objR_Atk_S1E);
		inst.dir = dir;
		if(dir){
			if(up) inst.image_angle = 45;
			else if(down) inst.image_angle = -45;
			inst.image_xscale = -1;
		}else{
			if(up) inst.image_angle = -45;
			else if(down) inst.image_angle = 45;
			inst.image_xscale = 1;
		}
		atk = 0;
		image_index = 12;
		step += 1;
	}else{
		atk += 1;
		if(image_index>11){
			image_speed = 0;
			image_index = 11;
		}
		if(atk>50 && global.weapon >= 4){
			combo = 0;
			crouch = false;
			image_index = 0;
			step = 0;
			instance_change(objR_Atk_S2,false);
		}
	}
}else if(image_index==14||image_index==15){
	if(b1==2){
		sound_play(global.SndBullet);
		image_index = 3;
		step = 6;
	}
}else if(step==45){
	sound_play(global.SndBullet);
	if(b1){
		image_index = 3;
		step = 6;
	}else step += 1;
}else if(54<step){
	combo = 0;
	crouch = false;
	instance_change(objNormal,false);
}else{
	step += 1;
}

