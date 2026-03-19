var __b__;
__b__ = action_if_variable(i, 10, 0);
if __b__
{
		bGM_stop(global.bgm);
		bGM_close(global.bgm);
		global.bgm_kind = 0;

		sound_play(global.SndDecide);

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
}
