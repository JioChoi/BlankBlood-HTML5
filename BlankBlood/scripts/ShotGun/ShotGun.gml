function ShotGun() {
			if(gun_index != 0 && gun_index < 15){
				gun_index += 0.5;
				if(gun_index==10){
					if(global.bullet3!=5){
						inst = instance_create(x,y,objN_Case);
						inst.kind = 4;
					}
					sound_play(global.SndReload_1);
					sound_play(global.SndReload_2);
				}
			}else{
				gun_index = 0;
			}


			if(global.ctrlmode){
				gun_dir = point_direction( x,y,x+round(joystick_xpos(1)),y+round(joystick_ypos(1)) );
				if(gun_dir == 0 && !dir) gun_dir = 180;
			}else gun_dir = point_direction(x,y,mouse_x,mouse_y);
			if(dir){
				if(20<gun_dir && gun_dir<=180) gun_dir = 20;
				else if(180<gun_dir && gun_dir<340) gun_dir = 340;
			}else{
				if(0<=gun_dir && gun_dir<=160) gun_dir = 160;
				else if(200<gun_dir && gun_dir<360) gun_dir = 200;		
			}

			if(b1 == 2){
				if(global.bullet3){
					if(gun_index==0){
						motion_add(gun_dir+180,5);
						gun_index += 1;
						global.bullet3 -=1;
						sound_play(global.SndShot_1);
						for(i=0;i<10;i+=1){
							inst = instance_create(x+lengthdir_x(30,gun_dir),y+lengthdir_y(30,gun_dir),objN_Bullet3);
							inst.direction = gun_dir-20+random(40);
							inst.alarm[0] = 1+random(1.5);
						}
					}
				}else{
					if(gun_index==0 && !air && global.weapon>=2 && global.bullet3<5 && !place_meeting(x,y,objSavePoint) && !place_meeting(x,y,objRecovery)){
						crouch = false;
						inv = false;
						image_alpha = 1;
						instance_change(objN_Reload3,true);
					}else sound_play(global.SndReload_3);
				}
			}else if(b1 == 3){
			}else if(b1 == 1){
			}

			if(global.ctrlmode){
				if(b2 == 2){
					if(!air) 	vspeed = -JHigh;
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
					else if(gun_index==0 && !air && global.weapon>=2 && global.bullet3<5 && !place_meeting(x,y,objSavePoint) && !place_meeting(x,y,objRecovery)){
						crouch = false;
						inv = false;
						image_alpha = 1;
						instance_change(objN_Reload3,true);
					}
				}else if(b3 == 3){
				}else if(b3 == 1){
				}
			}else{
				if(b2 == 2){
					if(down) change_wep_N();
					else if(gun_index==0 && !air && global.weapon>=2 && global.bullet3<5 && !place_meeting(x,y,objSavePoint) && !place_meeting(x,y,objRecovery)){
						crouch = false;
						inv = false;
						image_alpha = 1;
						instance_change(objN_Reload3,true);
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
