switch(motion){
	case 0: 
		with(objNormal){
			if(300<distance_to_object(other) && distance_to_object(other)<400){
				if(x<other.x){
					other.image_xscale = -1;
				}else if(x>other.x){
					other.image_xscale = 1;
				}
			}else if(350>distance_to_object(other)){
				if(other.image_xscale){
					other.x += random(5);
				}else{
					other.x -= random(5);
				}
			}
		}

		image_index += random(1);
		if(!global.retry){
			if(Percentage(0.5)){
				with(objNormal){
					if(x<other.x){
						other.image_xscale = -1;
					}else if(x>other.x){
						other.image_xscale = 1;
					}
				}
				image_index = 0; motion = 1; step = 0;
			}
			if(Percentage(0.1)){
				with(objNormal){
					if(x<other.x){
						other.image_xscale = -1;
					}else if(x>other.x){
						other.image_xscale = 1;
					}
				}
				image_index = 0; motion = 3; step = 0;
			}
		}
		break;
	case 1:	
		image_index += 0.5;
		if(step==18){
			if(image_xscale) col = collision_line(x+50,y-48,x+300,y-48,objNormal,0,1);
			else col = collision_line(x-50,y-48,x-300,y-48,objNormal,0,1);
			with(col){
				if(!global.bind && !inv){
					Particle(global.SprEffect_Particle[21],x,y,20,50,50,0.98,0,180,5,10,10,20,0.1,0.4,0.2);
					global.bind = 100;
					bindkind = 6;
					deadkind = 10;
					cutkind = 0;
					sound_play(global.SndHit_08);
					step = 0;
					premouse_x = mouse_x;
					premouse_y = mouse_y;
					instance_change(objBind,false);
					with(other){
						quake(10,15);
						image_index = 0; motion = 2; step = 0;
					};
				}
			}
		}
		if(step>30){image_index = 0; motion = 0; step = 0;}
		break;
	case 2:	
		with(objNormal){
			speed = 0;gravity = 0;
			if(other.image_xscale) x = other.x+214;
			else  x = other.x-214;
			y = other.y-70;

			if(instance_number(objE103_Arm04)<2){
				instance_create(x,y,objE103_Arm04);
				inst = instance_create(x,y,objE103_Arm04);
				inst.image_xscale = -1;
			}
		}
		global.bind += 1.2;
		if(global.bind>100) global.bind = 100;
		image_index += 0.5;
		if(step==30){sound_play(global.SndHit_05);quake(10,15);}
		if(step>30){
			image_index = 15;
			if(!global.bind || instance_exists(objE103_ArmFinish01)){image_index = 0; motion = 0; step = 0;}
			else {
				global.bind += 1.2;
				if(global.bind>100) global.bind = 100;
			}
		}
		break;
	case 3:	
		image_index += 0.5;
		if(step>26){image_index = 0; motion = 4; step = 0;}
		break;
	case 4:	
		if(step==34){
			if(image_xscale) col = collision_line(x,y,x+200,y-48,objNormal,0,1);
			else col = collision_line(x,y,x-200,y-48,objNormal,0,1);
			with(col){
				if(!global.retry && !inv){
					if(global.HP[global.chara]/global.HPMAX[global.chara] < 0.66){
						dmgkind = 22;
						deadkind = 81;
						pow = 80;
						if(other.image_xscale) direct = 10;
						else direct = rev_angle(10);
					}else{
						dmgkind = 21;
						deadkind = 81;
						pow = 70;
						if(other.image_xscale) direct = 0;
						else direct = rev_angle(0);
					}
					Particle(global.SprEffect_Particle[21],x,y,20,50,50,0.98,0,180,5,10,10,20,0.1,0.4,0.2);
					cutkind = 0;
					global.HP[global.chara] -= 20+random(5);
					step = 0;
					if(global.HP[global.chara]<=0){
						global.bind = -100;
						other.flag = true;
						sound_play(global.SndHit_07);
						if(Percentage(40)) sound_play(global.SndHit_07);
						if(Percentage(40)) sound_play(global.SndHit_08);
						if(Percentage(40)) sound_play(global.SndHit_15);
						quake(20,10);
						Flash(c_red,0.8,0.1);
						alarm[11] = 1;
					}else sound_play(global.SndHit_04);
					instance_change(objDamage,false);
				}
			}
		}else if(step>58 && !flag){image_index = 0; motion = 0; step = 0;}

		if(flag){
			depth = 1;
			if(step < 61) image_index += 0.5;
			else if(Percentage(0.1)){
				image_index = 0; motion = 0; step = 0;
				with(objNormal){
					Particle(global.SprEffect_Particle[20],x,y,35,5,0,0.98,60,60,0,8,10,20,0.1,0.7,0.5);
					sound_play(global.SndHit_07);
					if(Percentage(40)) sound_play(global.SndHit_07);
					if(Percentage(40)) sound_play(global.SndHit_08);
					if(Percentage(40)) sound_play(global.SndHit_15);
					quake(20,10);
					Flash(c_red,0.8,0.1);
					deadkind = 10;
					alarm[11] = 1;	
				}
			}
			with(objNormal){
				if(other.step mod 35 == 0) Particle(global.SprEffect_Particle[20],x,y,10,5,0,0.98,60,60,0,8,10,20,0.1,0.7,0.5);
				Particle(global.SprEffect_Particle[20],x,y,global.blood,5,0,0.98,60,60,0,8,10,20,0.1,0.7,0.5);
				speed = 0;
				if(other.image_xscale) x = other.x+208;
				else  x = other.x-208;
				y = other.y-52;
				global.blood -= 0.05;
			}
		}else image_index += 0.5;
		break;
}
step += 1;
		
