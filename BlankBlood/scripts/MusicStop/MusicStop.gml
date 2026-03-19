function MusicStop() {
	if(room == room71_n && global.bgm_kind != 106){
		bGM_stop(global.bgm);
		bGM_close(global.bgm);
	}else if(room == room73_n && global.bgm_kind != 999){
		bGM_stop(global.bgm);
		bGM_close(global.bgm);
	}else if(room == room27_n && global.bgm_kind != 101){
		bGM_stop(global.bgm);
		bGM_close(global.bgm);
	}else if(room == room49_n && global.bgm_kind != 102){
		bGM_stop(global.bgm);
		bGM_close(global.bgm);
	}else if(room == room57_n && global.bgm_kind != 103){
		bGM_stop(global.bgm);
		bGM_close(global.bgm);
	}else if(room == room63_n || room == room70_n){
		if(global.bgm_kind != 104){
			bGM_stop(global.bgm);
			bGM_close(global.bgm);
		}
	}else if(room == room55_n){
		if(global.bgm_kind != 0){
			bGM_stop(global.bgm);
			bGM_close(global.bgm);
		}
	}else if( (room == room50_n || room == room51_n || room == room52_n || room == room53_n || room == room54_n) ){
		if(global.bgm_kind != 5){
			bGM_stop(global.bgm);
			bGM_close(global.bgm);
		}
	}else{
		if( (0<=global.room_y && global.room_y<2) && global.bgm_kind != 1){
			bGM_stop(global.bgm);
			bGM_close(global.bgm);
		}

		if( (2<=global.room_y && global.room_y<3) && global.bgm_kind != 2){
			bGM_stop(global.bgm);
			bGM_close(global.bgm);
		}

		if( (3<=global.room_y && global.room_y<6) && global.bgm_kind != 3){
			bGM_stop(global.bgm);
			bGM_close(global.bgm);
		}
		if( (6<=global.room_y && global.room_y<8) && global.bgm_kind != 4){
			bGM_stop(global.bgm);
			bGM_close(global.bgm);
		}
	}



}
