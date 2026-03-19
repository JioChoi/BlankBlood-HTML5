if(keyboard_check_pressed(vk_space) && global.help && !global.bind && !global.fdown && !global.retry){
	sound_play(global.SndDecide);
	Flash(image_blend,0.25,0.01);
	global.chara = !global.chara;
	global.gun_kind = 0;

	with(objNormal){
		if(global.chara){
			walk = 5;
			run = 7;
			JHigh = 16;
		}else{
			walk = 4;
			run = 9;
			JHigh = 18;
		}
  	}
}

if(global.joypad) if( global.Button[global.key[18]]==2  && global.help && !global.bind && !global.fdown && !global.retry){
	sound_play(global.SndDecide);
	Flash(image_blend,0.25,0.01);
	global.chara = !global.chara;
	global.gun_kind = 0;

	with(objNormal){
		if(global.chara){
			walk = 5;
			run = 7;
			JHigh = 16;
		}else{
			walk = 4;
			run = 9;
			JHigh = 18;
		}
  	}
}
