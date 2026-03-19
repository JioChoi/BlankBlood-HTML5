if(step != 0 && b1==2) combo = 1;

if(step == 12){
	sound_play(global.SndReload_1);
}else if(step == 20){
	sound_play(global.SndReload_2);
}else if(step == 32){
	global.weapon -= (100-global.bullet2)/5;
	global.bullet2 = 100;
	sound_play(global.SndReload_1);
}else if(step == 65){
	sound_play(global.SndReload_1);
	sound_play(global.SndReload_2);
}else if(85<step){
	combo = 0;
	instance_change(objNormal,false);
}

step += 1;
