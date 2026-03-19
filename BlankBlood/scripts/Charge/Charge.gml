function Charge() {
	if(global.ctrlmode){
		if(other.b3==2){
			if(score>round((100-global.weapon)*200)){
				sound_play(global.SndDecide);
				Flash(c_yellow,0.25,0.01);
				score -= round((100-global.weapon)*200);
		  		global.weapon = 100;
			}
		}
	}else{
		if(global.chara){
			if(other.b2==2){
				if(score>round((100-global.weapon)*200)){
					sound_play(global.SndDecide);
					Flash(c_yellow,0.25,0.01);
					score -= round((100-global.weapon)*200);
			  		global.weapon = 100;
				}
			}
		}else{
			if(other.b3==2){
				if(score>round((100-global.weapon)*200)){
					sound_play(global.SndDecide);
					Flash(c_yellow,0.25,0.01);
					score -= round((100-global.weapon)*200);
			  		global.weapon = 100;
				}
			}
		}
	}



}
