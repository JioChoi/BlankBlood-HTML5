script_execute(Key_Check,0,0,0,0,0);
if(b1==2){
	global.clone = true;
	global.help = true;
	sound_play(global.SndDecide);
	if(cur==0){
		Newgame();
		room_goto(global.room_num[0,0]);
	}else if(cur==1) DataLoad();
	else if(cur==2) room_goto(ItemCollection);
	else if(cur==3) room_goto(KeyConfig);
	else if(cur==4) game_end();
}
	if(up == 2){
		sound_play(global.SndSelect);
		cur -= 1;
		if(cur < 0) cur = 4;
	}

	if(down == 2){
		sound_play(global.SndSelect);
		cur += 1;
		if(cur > 4) cur = 0;		
	}

