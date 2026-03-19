if(global.event){hspeed = -20;mode = 1}
else{
	if(global.distance < 50){
		if(x>32) x-= random(2);
		if(mode == 3){
			image_index = 2;
			mode = 2;
			image_speed = -0.5;
		}
		if(image_index < 0 && mode == 2){mode = 1;gun_dir = 180}
		if(image_index > 3 && mode == 2){mode = 3;gun_dir = 0}
	}else{
		if(left){
			if(mode==1){
				if(gun_dir<180) gun_dir += 2;
				else			gun_dir -= 2;
			}

			if(mode == 3){
				image_index = 2;
				mode = 2;
				image_speed = -0.5;
			}
			if(!air){
				if(hspeed>-30){
					if(place_free(x-2,y)) hspeed -= 1.5;
				}else hspeed = -30;
			}else{
				if(hspeed>-30){
					if(place_free(x-1,y)) hspeed -= 0.5;
				}else hspeed = -30;
			}
		}

		if(right){
			if(mode==3){
				if(gun_dir<  0) gun_dir += 2;
				else			gun_dir -= 2;
			}

			if(mode == 1){
				image_index = 1;
				mode = 2;
				image_speed = 0.5
			}
			if(!air){
				if(hspeed<20){
					if(place_free(x+3,y)) hspeed += 2;
				}else hspeed = 20;
			}else{
				if(hspeed<20){
					if(place_free(x+1,y)) hspeed += 0.8;
				}else hspeed = 20;
			}
		}

		if(up){
			if(mode==1) gun_dir -= 5;
			else gun_dir += 5;
		}

		if(b1){
			gun += 1;
			if(gun mod 3==0 && mode != 2){
				inst = instance_create(x+21+lengthdir_x(32,gun_dir),y-25+lengthdir_y(32,gun_dir),objN_Bullet4);
				inst.direction = gun_dir+random(2);
				inst.alarm[0] = 1;
				inst = instance_create(x,y,objN_Case2);
			}
		}

		if(b2==2){
			if(!air) vspeed = -15;
		}

		if(down){
			if(mode==1) gun_dir += 5;
			else gun_dir -= 5;
		}

		if(mode==1){
			if(gun_dir>250) gun_dir = 250;
			if(gun_dir<110) gun_dir = 110;
		}
		if(mode==3){
			if(gun_dir>80) gun_dir = 80;
			if(gun_dir<-80) gun_dir = -80;
		}

		if(image_index < 0 && mode == 2){mode = 1;gun_dir = 180}
		if(image_index > 3 && mode == 2){mode = 3;gun_dir = 0}
	}
}

