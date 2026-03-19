{
	ang = 0;
	with(objNormal){
		if(x<other.x){
			other.dir = 1;
		}else if(x>other.x){
			other.dir = -1;
		}
		with(other){
			ang = point_direction(x,y,other.x,other.y);
		}
	}

	if(image_index>3) image_index = 3;
	if(step<40){
		motion_set(ang+180,5);
		if(step==39) motion_set(90,0);
	}else if(step>100){
		step = 0;
		image_index = 0;
		instance_change(objE23_Normal,false);
	}else if(step>60){
		motion_add(ang+random(20),3);
		if(speed>20) speed=20;
		if(speed>15){ 
			col = collision_rectangle(x,y,xprevious,yprevious,objNormal,0,1);
			with(col){
				if(!inv){
					dmgkind = 11;
					deadkind = 10;
					pow = 8;
					if(other.hspeed) direct = 10;
					else direct = rev_angle(10);
					Particle(global.SprEffect_Particle[20],x,y,abs(other.hspd),50,50,0.98,direct,20,abs(other.hspd/2),10,10,20,0.1,0.9,0.4);
					global.HP[global.chara] -= 5+random(10);
					sound_play(global.SndHit_00);
					sound_play(global.SndHit_13);
					step = 0;
					if(global.HP[global.chara]<=0) alarm[11] = 1;
					instance_change(objDamage,false);
				}
			}
		}
	}
	step+=1;
}
