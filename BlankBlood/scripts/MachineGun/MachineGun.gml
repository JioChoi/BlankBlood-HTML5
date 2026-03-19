function MachineGun() {
			if(dir) gun_dir = 0;
			else gun_dir = 180;

			if(counter mod 3==0){
				if(global.bullet2){
					if(gun_index!=1) gun_index = 1;
					else gun_index = 2;
				}else{
					gun_index = 1;
				}
			}

			if(b1 == 2){
			}else if(b1 == 3){
				crouch = false;
			}else if(b1 == 1){
				if(global.bullet2){
	 					if(counter mod 4==0){
							motion_add(gun_dir+180,1);
							global.bullet2 -=1;
							if(!crouch) inst = instance_create(x+lengthdir_x(64,gun_dir),y+8+lengthdir_y(64,gun_dir),objN_Bullet2);
							else inst = instance_create(x+lengthdir_x(59,gun_dir),y+25+lengthdir_y(59,gun_dir),objN_Bullet2);
							inst.direction = gun_dir+random(2);
							inst.alarm[0] = 1;
							inst = instance_create(x,y,objN_Case);
							inst.kind = 3;
						}
				}else{
					if(!air && global.weapon>=(100-global.bullet2)/2 && !place_meeting(x,y,objSavePoint) && !place_meeting(x,y,objRecovery)){
						crouch = false;
						inv = false;
						image_alpha = 1;
						instance_change(objN_Reload2,true);
					}else sound_play(global.SndReload_3);
				}
			}else{

				if(global.ctrlmode){
					if(b2 == 2){
						if(!air) vspeed = -JHigh;
						else if(jump){
							effect_create_below(ef_ellipse,x,y+48,0,c_blue);
							effect_create_below(ef_ellipse,x,y+48,0,c_white);
							effect_create_below(ef_ellipse,x,y+48,0,c_white);
							vspeed = -JHigh*0.95;
							jump = false;
						}
					}else if(b2 == 3){
					}else if(b2 == 1){
					}

		  			if(b3 == 2){
						if(down) change_wep_N();
						else if(!air && global.weapon>=(100-global.bullet2)/2 && !place_meeting(x,y,objSavePoint) && !place_meeting(x,y,objRecovery)){
							crouch = false;
							inv = false;
							image_alpha = 1;
							instance_change(objN_Reload2,true);
						}
					}else if(b3 == 3){
					}else if(b3 == 1){
					}
				}else{
					if(b2 == 2){
						if(down) change_wep_N();
						else if(!air && global.weapon>=(100-global.bullet2)/2 && !place_meeting(x,y,objSavePoint) && !place_meeting(x,y,objRecovery)){
							crouch = false;
							inv = false;
							image_alpha = 1;
							instance_change(objN_Reload2,true);
						}
					}else if(b2 == 3){
					}else if(b2 == 1){
					}
				}
  
	  			if(b4 == 2){
				}else if(b4 == 3){
					dash=false;
				}else if(b4 == 1){
					dash=true;
				}
			}



}
