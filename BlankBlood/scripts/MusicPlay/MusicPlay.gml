function MusicPlay() {
	if(room == room71_n && global.bgm_kind != 106){
	    bGM_stop(global.bgm);
	    bGM_close(global.bgm);
	    global.bgm = bGM_play(boss05,global.volume,1,0,1);
	    global.bgm_kind = 106;
	}else if(room == room73_n && global.bgm_kind != 999){
	    bGM_stop(global.bgm);
	    bGM_close(global.bgm);
	    global.bgm = bGM_play(send,global.volume,1,0,1);
	    global.bgm_kind = 999;
	}else if(room == room27_n && global.bgm_kind != 101){
	    bGM_stop(global.bgm);
	    bGM_close(global.bgm);
	    global.bgm = bGM_play(boss01,global.volume,1,0,1);
	    global.bgm_kind = 101;
	}else if(room == room49_n && global.bgm_kind != 102){
	    bGM_stop(global.bgm);
	    bGM_close(global.bgm);
	    global.bgm = bGM_play(boss02,global.volume*0.7,1,0,1);
	    global.bgm_kind = 102;
	}else if(room == room57_n && global.bgm_kind != 103){
	    bGM_stop(global.bgm);
	    bGM_close(global.bgm);
	    global.bgm = bGM_play(boss03,global.volume,1,0,1);
	    global.bgm_kind = 103;
	}else if(room == room63_n || room == room70_n){
	    if(global.bgm_kind != 104){
	        bGM_stop(global.bgm);
	        bGM_close(global.bgm);
	        global.bgm = bGM_play(boss04,global.volume,1,0,1);
	        global.bgm_kind = 104;
	    }
	}else if(room == room55_n){
	    bGM_stop(global.bgm);
	    bGM_close(global.bgm);
	    global.bgm_kind = 0;
	}else if( (room == room50_n || room == room51_n || room == room52_n || room == room53_n || room == room54_n) ){
	    if(global.bgm_kind != 5){
	        bGM_stop(global.bgm);
	        bGM_close(global.bgm);
	        global.bgm = bGM_play(s5,global.volume,1,0,1);
	        global.bgm_kind = 5;
	    }
	}else{
	    if( (0<=global.room_y && global.room_y<2) && global.bgm_kind != 1){
	        bGM_stop(global.bgm);
	        bGM_close(global.bgm);
	        global.bgm = bGM_play(s1,global.volume,1,0,1);
	        global.bgm_kind = 1;
	    }

	    if( (2<=global.room_y && global.room_y<3) && global.bgm_kind != 2){
	        bGM_stop(global.bgm);
	        bGM_close(global.bgm);
	        global.bgm = bGM_play(s2,global.volume,1,0,1);
	        global.bgm_kind = 2;
	    }

	    if( (3<=global.room_y && global.room_y<6) && global.bgm_kind != 3){
	        bGM_stop(global.bgm);
	        bGM_close(global.bgm);
	        global.bgm = bGM_play(s3,global.volume,1,0,1);
	        global.bgm_kind = 3;
	    }

	    if( (6<=global.room_y && global.room_y<8) && global.bgm_kind != 4){
	        bGM_stop(global.bgm);
	        bGM_close(global.bgm);
	        global.bgm = bGM_play(s4,global.volume,1,0,1);
	        global.bgm_kind = 4;
	    }
	}



}
