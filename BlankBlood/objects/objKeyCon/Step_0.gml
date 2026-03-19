{
	Key_Check();
}

var inst;

if(cur2==0){
    if(!global.joypad) global.ctrlmode = 0;
    if(left == 2){
    }

    if(right == 2){
    }

    if(up == 2){
        sound_play(global.SndSelect);
        cur -= 1;
        if(cur < 0) cur = 5;
    }

    if(down == 2){
        sound_play(global.SndSelect);
        cur += 1;
        if(cur > 5) cur = 0;        
    }

    if(b1 == 2 || b2 == 2){
        sound_play(global.SndDecide);
        if(cur==0) cur2 = 1;
        else if(cur==1) global.ctrlmode = !global.ctrlmode;
        else if(cur==2){
            global.volume-=0.1;
            if(global.volume<-0.05) global.volume=1;
        }else if(cur==3){
            global.sevolume-=0.1;
            if(global.sevolume<-0.05) global.sevolume=1;
            if(global.sevolume!=0) sound_global_volume(1+log10(global.sevolume));
            else                   sound_global_volume(0);
        }
        else if(cur==4) global.helper = !global.helper;
        else if(cur==5){
            var fileid;
            fileid = file_text_open_write("game");

            file_text_write_string(fileid,"global.key[0] = "+string(global.key[0]) +";");
            file_text_writeln(fileid);
            file_text_write_string(fileid,"global.key[1] = "+string(global.key[1]) +";");
            file_text_writeln(fileid);
            file_text_write_string(fileid,"global.key[2] = "+string(global.key[2]) +";");
            file_text_writeln(fileid);
            file_text_write_string(fileid,"global.key[3] = "+string(global.key[3]) +";");
            file_text_writeln(fileid);
            file_text_write_string(fileid,"global.key[4] = "+string(global.key[4]) +";");
            file_text_writeln(fileid);
            file_text_write_string(fileid,"global.key[5] = "+string(global.key[5]) +";");
            file_text_writeln(fileid);
            file_text_write_string(fileid,"global.key[6] = "+string(global.key[6]) +";");
            file_text_writeln(fileid);
            file_text_write_string(fileid,"global.key[7] = "+string(global.key[7]) +";");
            file_text_writeln(fileid);
            file_text_write_string(fileid,"global.key[10] = "+string(global.key[10]) +";");
            file_text_writeln(fileid);
            file_text_write_string(fileid,"global.key[11] = "+string(global.key[11]) +";");
            file_text_writeln(fileid);
            file_text_write_string(fileid,"global.key[12] = "+string(global.key[12]) +";");
            file_text_writeln(fileid);
            file_text_write_string(fileid,"global.key[13] = "+string(global.key[13]) +";");
            file_text_writeln(fileid);
            file_text_write_string(fileid,"global.key[14] = "+string(global.key[14]) +";");
            file_text_writeln(fileid);
            file_text_write_string(fileid,"global.key[15] = "+string(global.key[15]) +";");
            file_text_writeln(fileid);
            file_text_write_string(fileid,"global.key[16] = "+string(global.key[16]) +";");
            file_text_writeln(fileid);
            file_text_write_string(fileid,"global.key[17] = "+string(global.key[17]) +";");
            file_text_writeln(fileid);
            file_text_write_string(fileid,"global.key[18] = "+string(global.key[18]) +";");
            file_text_writeln(fileid);
            file_text_write_string(fileid,"global.key[19] = "+string(global.key[19]) +";");
            file_text_writeln(fileid);
            file_text_write_string(fileid,"global.key[20] = "+string(global.key[20]) +";");
            file_text_writeln(fileid);
            file_text_writeln(fileid);
            file_text_write_string(fileid,"global.ctrlmode = "+string(global.ctrlmode) +";");
            file_text_writeln(fileid);
            file_text_write_string(fileid,"global.volume = "+string(global.volume) +";");
            file_text_writeln(fileid);
            file_text_write_string(fileid,"global.sevolume = "+string(global.sevolume) +";");
            file_text_writeln(fileid);
            file_text_write_string(fileid,"global.helper = "+string(global.helper) +";");
            file_text_close(fileid);
            room_goto(Title);
        }
        if(!global.joypad) global.ctrlmode = 0;
    }
}else{
    if(!global.ctrlmode){
        //keyboard_wait();
        sound_play(global.SndDecide);
        if(cur2==1) global.key[0] = keyboard_lastkey;
        if(cur2==2) global.key[1] = keyboard_lastkey;
        if(cur2==3) global.key[2] = keyboard_lastkey;
        if(cur2==4) global.key[3] = keyboard_lastkey;
        if(cur2==5) global.key[4] = keyboard_lastkey;
        if(cur2==6) global.key[5] = keyboard_lastkey;
        if(cur2==7) global.key[6] = keyboard_lastkey;
        if(cur2==8) global.key[10] = keyboard_lastkey;
        if(cur2==9) global.key[11] = keyboard_lastkey;
        if(cur2==10) global.key[12] = keyboard_lastkey;
        if(cur2==11) global.key[13] = keyboard_lastkey;
        if(cur2==12) global.key[7] = keyboard_lastkey;
        cur2+=1;
        if(cur2 > 12) cur2 = 0;
    }else{
        var i,num;
        for(i=0;i<global.joypad_buttons;i+=1){
            if(global.Button[i+1]==2){
                num = i+1;
                sound_play(global.SndDecide);
                if(cur2==1) global.key[14] = num;
                if(cur2==2) global.key[15] = num;
                if(cur2==3) global.key[16] = num;
                if(cur2==4) global.key[17] = num;
                if(cur2==5) global.key[18] = num;
                if(cur2==6) global.key[19] = num;
                if(cur2==7) global.key[20] = num;
                cur2+=1;
                if(cur2 > 7) cur2 = 0;
            }
        }
    }
}

