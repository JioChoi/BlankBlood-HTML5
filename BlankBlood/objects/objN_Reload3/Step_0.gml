if(step != 0 && step != 47 && (b3 || b2 || b1) && global.bullet3!=5 && global.weapon >= 2) combo = 1;

if(step==47){
	sound_play(global.SndReload_1);
	global.weapon -= 2;
	global.bullet3 += 1;
	combo = 0;
}else if(step==63){
	if(combo){
		combo = 0;
		image_index = 16;
		step = 46;
	}
}else if(85<step){
	sound_play(global.SndReload_2);
	combo = 0;
	gun_index = 9;
	instance_change(objNormal,false);
}

step += 1;
