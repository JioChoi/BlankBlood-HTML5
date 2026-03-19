with (objCharaSet) {

	if(other.flag){
		global.scr_dark += 0.2;
		if(global.scr_dark>1){
			global.scr_dark = 0;
			global.room_x = other.rm_x;
			global.room_y = other.rm_y;
			global.xpos = other.xp;
			global.ypos = other.yp;
			global.move_vspeed = vspeed;
			global.chr_dir = dir;
			if(global.HP <= 0) global.HP = 1;
			room_goto(global.room_num[global.room_x,global.room_y]);
		}
	}
}
