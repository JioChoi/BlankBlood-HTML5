if(keyboard_check_pressed(vk_enter)){
	sound_play(global.SndDecide);
	Flash(image_blend,0.25,0.01);
	global.HP[0] = global.HPMAX[0];
	global.HP[1] = global.HPMAX[1];
}

if(global.joypad) if( global.Button[global.key[20]]==2 ){
	sound_play(global.SndDecide);
	Flash(image_blend,0.25,0.01);
	global.HP[0] = global.HPMAX[0];
	global.HP[1] = global.HPMAX[1];
}

Charge();
mode = 1;
