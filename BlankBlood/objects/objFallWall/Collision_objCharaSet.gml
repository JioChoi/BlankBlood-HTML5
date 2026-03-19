if(!global.retry){
	Particle(global.SprEffect_Particle[20],x,y,40,50,50,0.98,0,180,1,10,10,20,0.1,0.9,0.4);
	with(objNormal){
		global.HP[global.chara]=0;
		deadkind = 10;
		alarm[11] = 1;
	}
	if(Percentage(70)) sound_play(global.SndHit_05);
	if(Percentage(70)) sound_play(global.SndHit_03);
	if(Percentage(70)) sound_play(global.SndHit_06);
	if(Percentage(70)) sound_play(global.SndHit_07);
	voice_play(55);
	quake(50,15);
	Flash(c_red,0.5,0.035);
}
