if(in_screen(x+96,y)){
 	if(!cutkind) voice_play2(VicElectricDmg(0),chara);
	if(Percentage(90)) sound_play(global.SndHit_06);
	if(Percentage(90)) sound_play(global.SndHit_07);
	if(Percentage(90)) sound_play(global.SndHit_08);
	if(Percentage(90)) sound_play(global.SndHit_15);
}
	Particle(global.SprEffect_Particle[20],x+96,y,25,50,50,0.98,45,-45,3,10,10,20,0.1,0.8,0.6);
	quake(2,2);
dir = round(random(1));
cutkind = round(random(1));
chara = round(random(1));

if(chara){
	switch (round(random(2)))
	{
	case 0:
		motion = 11;
		image_index = 4;
		break;
	case 1:
		motion = 12;
		image_index = 4+round(random(3));
		break;
	case 2:
		motion = 21;
		image_index = 4+round(random(3));
		break;
	}	
}else{
	switch (round(random(2)))
	{
	case 0:
		motion = 11;
		image_index = 2+round(random(2));
		break;
	case 1:
		motion = 12;
		image_index = 7;
		break;
	case 2:
		motion = 21;
		image_index = round(random(3));
		break;
	}
}
action_move_to(2000+random(32), y);
