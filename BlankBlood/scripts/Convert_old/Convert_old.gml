function Convert_old() {
	{
	var sav,val1,val2,val3,val4,val5,val6,val7,val8;
	var fileid,i;
		if(file_exists("save")){
			fileid = file_text_open_read("save");

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

				convert_point[0] = 0;
				convert_point[1] = 10000;
				convert_point[2] = 20500;
				convert_point[3] = 19800;
				convert_point[4] = 31500;
				convert_point[5] = 7000;
				convert_point[6] = 14400;
				convert_point[7] = 52100;
				convert_point[8] = 94500;
				convert_point[9] = 36500;
				convert_point[10] = 143500;
				convert_point[11] = 76500;
				convert_point[12] = 322000;
				convert_point[13] = 468000;
				convert_point[14] = 53000;
				convert_point[15] = 128000;
				convert_point[16] = 18000;
				convert_point[17] = 52000;
				convert_point[18] = 100;
				convert_point[19] = 95000;
				convert_point[20] = 5000;
				convert_point[21] = 500;
				convert_point[22] = 219000;
				convert_point[23] = 50000;
				convert_point[24] = 120000;
				convert_point[25] = 99500;
				convert_point[26] = 43500;
				convert_point[27] = 12000;
				convert_point[28] = 17500;
				convert_point[29] = 500;
				convert_point[30] = 1500;

				for(i=0;i<100;i+=1){
					global.item_flag[i]= file_text_read_real(fileid);
					file_text_readln(fileid) 
				}
				file_text_close(fileid);

				item_price = 0;
				for(i=0;i<100;i+=1){
					if(global.item_flag[i]) item_price += convert_point[i];
				}
				mons_price = val7 - item_price;

				item_price = 0;
				for(i=0;i<100;i+=1){
					if(global.item_flag[i]) item_price += global.item_point[i];
				}

				val7 = item_price + mons_price;

				global.chr_dir = val1;
				global.room_x = val2;
				global.room_y = val3;
				global.xpos = val4;
				global.ypos = val5;
				global.move_vspeed = val6;
				score = val7;
				global.HP[0] = val8;
				global.HP[1] = val9;

				DataSave();
				return 1;
		}else return 0;
	}



}
