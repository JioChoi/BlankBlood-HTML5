var __b__;
__b__ = action_if_variable(i, 10, 0);
if __b__
{
		bGM_stop(global.bgm);
		bGM_close(global.bgm);
		global.bgm_kind = 0;

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

		var fileid,i,A;
		
		fileid = file_text_open_write("save");
		
		A = global.save_var;
		file_text_write_string(fileid,string(A));
		file_text_writeln(fileid);
		A = global.chr_dir;
		file_text_write_string(fileid,string(A));
		file_text_writeln(fileid);
		A = global.room_x*512+1324;
		file_text_write_string(fileid,string(A));
		file_text_writeln(fileid);
		A = global.room_y*612+1112
		file_text_write_string(fileid,string(A));
		file_text_writeln(fileid);
		
		A = global.xpos;
		file_text_write_string(fileid,string(A));
		file_text_writeln(fileid);
		A = global.ypos;
		file_text_write_string(fileid,string(A));
		file_text_writeln(fileid);
		A = global.move_vspeed;
		file_text_write_string(fileid,string(A));
		file_text_writeln(fileid);
		A = (score+1234)*(1234+global.xpos-global.move_vspeed);
		file_text_write_string(fileid,string(A));
		file_text_writeln(fileid);
		A = (global.HP[0]+4321)*(1234+global.ypos-global.move_vspeed);
		file_text_write_string(fileid,string(A));
		file_text_writeln(fileid);
		A = (global.HP[1]+4321)*(1234+global.ypos-global.move_vspeed);
		file_text_write_string(fileid,string(A));
		file_text_writeln(fileid);
		var i;
		for(i=0;i<100;i+=1){
			A = global.item_flag[i];
			file_text_write_string(fileid,string(A));
			file_text_writeln(fileid);
		}
		A = global.weapon;
		file_text_write_string(fileid,string(A));
		file_text_writeln(fileid);
		A = global.bullet2;
		file_text_write_string(fileid,string(A));
		file_text_writeln(fileid);
		A = global.chara;
		file_text_write_string(fileid,string(A));
		file_text_writeln(fileid);
		A = global.bullet3;
		file_text_write_string(fileid,string(A));
		file_text_writeln(fileid);
		file_text_close(fileid);
		sound_play(global.SndSave);

		var i;
		for(i=0;i<100;i+=1){
			global.item_flag[i] = 0;
		}
		score = 0;
		room_goto(Title);
}
