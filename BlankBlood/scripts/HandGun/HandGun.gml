function HandGun() {
			if(gun_index != 0 && gun_index != 11) gun_index += 1;
			else{
				if(global.bullet) gun_index = 0;
				else gun_index = 11;
			}


			if(global.ctrlmode){
				gun_dir = point_direction( x,y,x+round(joystick_xpos(1)),y+round(joystick_ypos(1)) );
				if(gun_dir == 0 && !dir) gun_dir = 180;
			}else gun_dir = point_direction(x,y,mouse_x,mouse_y);
			if(dir){
				if(105<gun_dir && gun_dir<=180) gun_dir = 105;
				else if(180<gun_dir && gun_dir<230) gun_dir = 270;
			}else{
				if(0<=gun_dir && gun_dir<=75) gun_dir = 75;
				else if(270<gun_dir && gun_dir<360) gun_dir = 270;		
			}

			if(b1 == 2){
				if(global.bullet){
					if(gun_index==0){
						motion_add(gun_dir+180,5);
						gun_index += 1;
						global.bullet -=1;
						inst = instance_create(x+lengthdir_x(30,gun_dir),y+lengthdir_y(30,gun_dir),objN_Bullet);
						inst.direction = gun_dir;
						inst.alarm[0] = 1;
						inst = instance_create(x,y,objN_Case);
						inst.kind = 1;
					}
				}else{
					if(!air){
						crouch = false;
						inv = false;
						image_alpha = 1;
						instance_change(objN_Reload,true);
					}else sound_play(global.SndReload_3);
				}
			}else if(b1 == 3){
			}else if(b1 == 1){
			}

			if(global.ctrlmode){
				if(b2 == 2){
					if(!air){
						vspeed = -JHigh;
						crouch = false;
					}else if(jump){
						effect_create_below(ef_ellipse,x,y+48,0,c_blue);
						effect_create_below(ef_ellipse,x,y+48,0,c_white);
						effect_create_below(ef_ellipse,x,y+48,0,c_white);
						vspeed = -JHigh*0.95;
						jump = false;
						crouch = false;
					}
				}else if(b2 == 3){
				}else if(b2 == 1){
				}

	  			if(b3 == 2){
					if(down) change_wep_N();
					else if(!air){
						crouch = false;
						inv = false;
						image_alpha = 1;
						instance_change(objN_Reload,true);
					}
				}else if(b3 == 3){
				}else if(b3 == 1){
				}
			}else{
				if(b2 == 2){
					if(down) change_wep_N();
					else if(!air){
						crouch = false;
						inv = false;
						image_alpha = 1;
						instance_change(objN_Reload,true);
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
