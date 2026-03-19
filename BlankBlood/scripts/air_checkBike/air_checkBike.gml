function air_checkBike() {
	{
		if( place_free(x,y+1) ){
			air = 1;
		}else{
			if(air){
				effect_create_above(ef_smokeup,x+64,y+48,0,c_gray);
				sound_play(global.SndHit_03);
				quake(2,10);
			}
			air = 0;
		}
	}



}
