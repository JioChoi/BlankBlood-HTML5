image_speed = 0.5;
if(step==3){
	inst = instance_create(x,y,objR_Atk_S1E);
	inst.dir = dir;
	if(dir){
		inst.image_xscale = -0.5;
	}else{
		inst.image_xscale = 0.5;
	}
	step+=1;
}else if(5<image_index && image_index<13){
	if(!b1){
		image_index = 13;
		step += 1;
	}else{
		if(image_index>12){
			image_speed = 0;
			image_index = 12;
		}
	}
}else if(15<=image_index && image_index<17){
	if(atk==0){
		sound_play(global.SndStep_1);
		effect_create_above(ef_smokeup,x,y+48,0,c_white);
		vspeed = -8;
		if(dir) hspeed = 40;
		else hspeed = -40;
	}
	image_speed = 0;
	if(round(image_index)==15){
		image_index = 16;
	}else if(round(image_index)==16){
		image_index = 15;
	}
	if((atk>6 || b1 || !air) && atk!=0){
		image_index = 17;
		step += 1;
	}else atk+=1;
}else if(step==17){
	if(dir) inst = instance_create(x-130,y+16,objR_Atk_S2E);
	else inst = instance_create(x+130,y+16,objR_Atk_S2E);
	inst.dir = dir;
	inst.image_yscale = 0.4;
	if(dir){
		inst.image_xscale = -1.5;
	}else{
		inst.image_xscale = 1.5;
	}
	step += 1;
}else if(step==80){
	sound_play(global.SndBullet);
	step += 1;
}else if(85<step){
	combo = 0;
	crouch = false;
	instance_change(objNormal,false);
}else{
	step += 1;
}

