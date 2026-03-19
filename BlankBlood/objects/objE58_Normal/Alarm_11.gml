global.assist = -1;
image_index = 0;
sound_play(global.SndSwitch_1);
image_speed = 0.5;
	switch (sw)
	{
	case 1:
		if(!instance_exists(objE103_Beam)){
			if(global.sw01.swit &&
				global.sw02.swit &&
				global.sw03.swit &&
				global.sw04.swit &&
				global.sw05.swit &&
				global.sw06.swit &&
				global.sw07.swit){
				instance_create(x-500,y-64+16,objE103_Beam);
			}
		}
		break;
	case 2:
		with(objLamp){image_index=false};
		with(objEneBlock){instance_destroy()};
		global.clone = false;
		Flash(c_white,0.1,0.05);
		break;
	}

