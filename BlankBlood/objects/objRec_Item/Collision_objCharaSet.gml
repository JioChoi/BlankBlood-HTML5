if(!air){
	global.HP[global.chara] += value;
	if(global.HP[global.chara]<=0) global.HP[global.chara] = 1;
	if(global.HP[global.chara]>global.HPMAX[global.chara]){
		score += global.HP[global.chara] - global.HPMAX[global.chara];
		global.HP[global.chara] = global.HPMAX[global.chara];
	}
	sound_play(global.SndRec);
	instance_destroy();
}
