{
var sav,val1,val2,val3,val4,val5,val6,val7,val8;
var fileid,i;

	if(file_exists("save")){
		fileid = file_text_open_read("save");

		sav = file_text_read_real(fileid);
		if(sav==global.save_var){
			file_text_readln(fileid);

			val1 = file_text_read_real(fileid);
			file_text_readln(fileid);

			val2 = file_text_read_real(fileid);
			val2 = (val2-1324)/512;
			file_text_readln(fileid);

			val3 = file_text_read_real(fileid);
			val3 = (val3-1112)/612;
			file_text_readln(fileid);

			val4 = file_text_read_real(fileid);
			file_text_readln(fileid);
			val5 = file_text_read_real(fileid);
			file_text_readln(fileid);
			val6 = file_text_read_real(fileid);
			file_text_readln(fileid);

			val7 = file_text_read_real(fileid);
			val7 = val7/(1234+val4-val6) - 1234;
			file_text_readln(fileid);

			val8 = file_text_read_real(fileid);
			val8 = val8/(1234+val5-val6) - 4321
			file_text_readln(fileid);
  	
  			val9 = file_text_read_real(fileid);
			val9 = val9/(1234+val5-val6) - 4321
			file_text_readln(fileid);

			for(i=0;i<100;i+=1){
				global.item_flag[i]= file_text_read_real(fileid);
				file_text_readln(fileid) 
			}
			file_text_close(fileid);

			global.chr_dir = val1;
			global.room_x = val2;
			global.room_y = val3;
			global.xpos = val4;
			global.ypos = val5;
			global.move_vspeed = val6;
			score = val7;
			global.HP[0] = val8;
			global.HP[1] = val9;
		}else{
			file_text_close(fileid);
			show_message("varsion error");
			global.chr_dir = 1;
			global.room_x = 0;
			global.room_y = 0;
			global.xpos = 96;
			global.ypos = 160;
			global.move_vspeed = 0;
			score = 0;
			global.HP[0] = global.HPMAX[0];
			global.HP[1] = global.HPMAX[1];
		}
	}else{
		global.chr_dir = 1;
		global.room_x = 0;
		global.room_y = 0;
		global.xpos = 96;
		global.ypos = 160;
		global.move_vspeed = 0;
		score = 0;
		global.HP[0] = global.HPMAX[0];
		global.HP[1] = global.HPMAX[1];
	}
	item = 1;

	item_price = 0;
	for(i=0;i<100;i+=1){
		if(global.item_flag[i]) item_price += global.item_point[i];
	}
}

