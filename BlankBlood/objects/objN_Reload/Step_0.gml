if(step != 0 && b1==2) combo = 1;

if(step == 12){
	if(dir) inst = instance_create(x+20,y,objN_Case);
	else inst = instance_create(x-20,y,objN_Case);
	inst.kind = 2;
}else if(step == 20){
	global.bullet = 8;
	sound_play(global.SndReload_1);
}else if(45<step){
	sound_play(global.SndReload_2);
	combo = 0;
	instance_change(objNormal,false);
}

step += 1;
