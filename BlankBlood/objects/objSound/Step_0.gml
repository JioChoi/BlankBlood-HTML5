	col = collision_rectangle(x,y,x+32,y+96,objNormal,0,1);
	with(col){
		if(!other.flag){
			sound_play(global.SndSe_4);
			Flash(c_white,0.4,0.1);
			other.flag = true;
		}
	}
