{
	Key_Check();
}
var inst;
	if(left == 2){
	}

	if(right == 2){
	}

	if(up == 2){
		if(item>1){
			sound_play(global.SndSelect);
			item -= 1;
		}
	}

	if(down == 2){
		if(global.item_detail[item+1] != ""){
			sound_play(global.SndSelect);
			item += 1;
		}
	}

	if(b1 == 2 || b2 == 2){
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
		sound_play(global.SndCancel);
		room_goto(Title);
	}
