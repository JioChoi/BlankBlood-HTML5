with (objCharaSet) {
	if(global.scr_dark>1){
		global.scr_dark = 0;
		global.room_x = 11;
		global.room_y = 0;
		global.xpos = 224;
		global.ypos = 96;
		global.move_vspeed = vspeed;
		global.chr_dir = dir;
		if(global.HP <= 0) global.HP = 1;
		room_goto(global.room_num[global.room_x,global.room_y]);
	}

	if(other.flag) global.scr_dark += 0.2;
}
