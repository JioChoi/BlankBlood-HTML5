action_set_relative(1);
action_effect(0, 0, 0, 1, 0, 0);
	col = collision_circle(x,y,64,objNormal,0,1);
	with(col){
		if(!inv){
			quake(30,20);
			Flash(c_red,0.4,0.05);
			sound_play(global.SndHit_11);
			sound_play(global.SndHit_17);
			global.HP[0] -= 6.5;
			if(global.HP[0]<0) alarm[11] = 1;
			inv = 1;
			alarm[1] = 60;
		}
	}

action_kill_object();
action_set_relative(0);
