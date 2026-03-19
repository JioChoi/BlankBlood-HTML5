function change_wep_N() {
	if(global.chara){
		sound_play(global.SndDecide);
		Flash(c_yellow,0.25,0.01);
		gun_index = 0;
		if(global.gun_kind == 0){
			if(global.item_flag[36]) global.gun_kind = 1;
			else if(global.item_flag[35]) global.gun_kind = 2;
		}else if(global.gun_kind == 1){
			if(global.item_flag[35]) global.gun_kind = 2;
			else global.gun_kind = 0;
		}else if(global.gun_kind == 2){
			global.gun_kind = 0;
		}
	}



}
