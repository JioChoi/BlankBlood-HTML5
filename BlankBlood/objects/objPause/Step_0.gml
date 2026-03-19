if(step == 1){
	sound_play(global.SndCancel);
/*	var i;
	for(i=0;i<1;i+=0){
		if( keyboard_check(global.key[0]) ){if(select!=0) sound_play(global.SndSelect);select = 0;}
		if( keyboard_check(global.key[1]) ){if(select!=1) sound_play(global.SndSelect);select = 1;}
		if( keyboard_check(global.key[10]) ){if(select!=0) sound_play(global.SndSelect);select = 0;}
		if( keyboard_check(global.key[11]) ){if(select!=1) sound_play(global.SndSelect);select = 1;}

		if(global.ctrlmode){
			if( round(joystick_xpos(1))==-1 ){if(select!=0) sound_play(global.SndSelect);select = 0;}
			if( round(joystick_xpos(1))==1 ){if(select!=1) sound_play(global.SndSelect);select = 1;}
			if( joystick_check_button(1,global.key[14]) ||  joystick_check_button(1,global.key[20]) ) i = 1;
		}

  		if(keyboard_check_pressed(vk_backspace) || keyboard_check_pressed(vk_enter)) i = 1;
		//io_handle();
		//screen_redraw();
	}*/

	if(select){
		bGM_stop(global.bgm);
		bGM_close(global.bgm);
		global.bgm_kind = 0;

		sound_play(global.SndDecide);
		instance_destroy();

		global.chr_dir = 1;
		global.room_x = 0;
		global.room_y = 0;
		global.xpos = 96;
		global.ypos = 160;
		global.move_vspeed = 0;

		global.HP[0] = global.HPMAX[0];
		global.HP[1] = global.HPMAX[1];
		global.bullet = 8; 
		global.debug = 0;

		var i;
		for(i=0;i<100;i+=1){
			global.item_flag[i] = 0;
		}
		score = 0;
		room_goto(Title);		
	}else{
		MusicPlay();
		DataLoad()
		sound_play(global.SndCancel);
		instance_destroy();
	}
}
