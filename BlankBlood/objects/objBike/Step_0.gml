	if(flag){
		global.scr_dark += 0.05;
		if(global.scr_dark==1) instance_create(x,y,objBikeCtrlMsg);
		if(global.scr_dark>1.1 && !sound_isplaying(global.SndBoss[0])){
			with(objNormal){
				global.help = false;
				with(objHelper){instance_destroy()};
				x = other.x;
				y = other.y;
				sound_play(global.SndBoss[1]);
				global.chara = 0;
				global.HP[0] = global.HPMAX[0];
				global.HP[1] = global.HPMAX[1];
				instance_change(objEscape,0);
			}
			global.scr_dark = 0;
			instance_destroy();
		}else if(global.scr_dark>1){
			with(objNormal){
				x = other.x;
				y = other.y;
			}
		}
	}

	air_check();
	if(air){
		gravity = global.g;
		gravity_direction = 270;
	}else{
		gravity = 0;
		gravity_direction = 0;
	}
