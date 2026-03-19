function air_checkChara() {
	{
		if( place_free(x,y+1) ){
			air = 1;
		}else{
			if(air){
				if(!global.retry) sound_play(global.SndStep_1);
				else sound_play(global.SndStep_2);
			}
			air = 0;
		}
	}



}
