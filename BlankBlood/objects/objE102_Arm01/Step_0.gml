{
	with(objNormal){
		other.dir_chara = point_direction(other.x,other.y,x,y)
	}

	if(mode==1){
		        if(step<010) { image_index = 0; }
		else if(step<011) { image_index = 1; }
		else if(step<012) { image_index = 2; }
		else if(step<013) { image_index = 3; }
		else if(step<014) { image_index = 4; }
		else if(step<035) { image_index = 5; }
		else if(step<075) { attack += 5;image_index = 5;
					if(collision_point(x+lengthdir_x(attack+170,image_angle),y+lengthdir_y(attack+170,image_angle),objNormal,0,1)){
						with(objNormal){
							if(!global.bind && !inv){
								global.bind = 100;
								global.fdown = -100;
								bindkind = 5+round(random(1));
								deadkind = 81;
								cutkind = 0;

								global.HP[global.chara] -= random(5);
								sound_play(global.SndHit_05);
	
								step = 0;
								premouse_x = mouse_x;
								premouse_y = mouse_y;
								instance_change(objBind,false);
								with(other){
									step = 0;
		 		 					mode = 2;
		 		 					if(other.bindkind==5) mode = 3;
								}
							}
						} 
		 			}
				  }
		else if(step<100) { image_index = 5; }
		else if(step<150) { image_index = 5+random(5); }
		else if(step<151) { image_index = 5; }
		else if(step<152) { image_index = 4; }
		else if(step<153) { image_index = 3; }
		else if(step<154) { image_index = 2; }
		else if(step<155) { image_index = 1; }
		else if(step<156) { image_index = 0; }
		else if(attack<0)  { step = 0; attack = 0; mode = false; image_index = 0; }
		else { attack -= 5;image_index = 0; }
 		step += 1;
	}else if(mode==2){
		if(global.HP[global.chara]>0){
			image_index = 5+random(4);
			image_angle += -1+random(2);
		}else{
			step += 1;
			if(step > 700){
				with(objNormal){
					global.voice=false;
					image_angle = 0;
					global.bind = -100;
					deadkind = 10;
					step = 0;
					alarm[11] = 1;
				}
				step = 151;
				mode = 1;
			}
		}

		if(!global.bind){
			step = 151;
			mode = 1;
		}else{
			global.bind += 1.2;
			if(global.bind>100) global.bind = 100;
			with(objNormal){
				speed = 0; depth = -2;
				x = other.x+lengthdir_x(other.attack+170,other.image_angle);
				y = other.y+lengthdir_y(other.attack+170,other.image_angle);
				if(90<other.image_angle && other.image_angle<270) image_angle = other.image_angle+180;
				else image_angle = other.image_angle;
				global.HP[global.chara] -= 0.25;

				if(image_index == 5 && Percentage(5)){
					if(Percentage(50)) voice_play(VicNormalDmg(0));
					sound_play(global.SndHit_05);
					image_index = 0;
				}
				if(global.HP[global.chara]<=0 && !global.retry){
					quake(50,15);
					voice_play(VicNormalDmg(1));
					sound_play(global.SndHit_06);
					step = 0;
					alarm[11] = 1;
				}
 			}
		}
	}else if(mode==3){
		if(global.HP[global.chara]>0){
			image_index = 5+random(4);
			image_angle += -0.2+random(0.4);
		}else{
			step += 1;
			if(step >400){
				with(objNormal){
					global.voice=false;
					image_angle = 0;
					global.bind = -100;
					cutkind = 1;
					deadkind = 13;
					step = 0;
					alarm[11] = 1;
					inst = instance_create(x,y,objCut);
					inst.cutkind = cutkind;
					inst.dir = dir;
					inst.speed = 0;
				}
				step = 100;
				mode = 1;
			}else{
				with(objNormal){
					Particle(global.SprEffect_Particle[20],other.x+lengthdir_x(other.attack+170,other.image_angle),other.y+lengthdir_y(other.attack+170,other.image_angle),5,5,0,0.98,60,60,0,3,10,20,0.1,0.4,0.5);
					Particle(global.SprEffect_Particle[20],other.x+lengthdir_x(other.attack+170,other.image_angle),other.y+lengthdir_y(other.attack+170,other.image_angle),5,5,0,0.98,270,60,0,3,10,20,0.1,0.4,0.3);
				}
			}
		}

		if(!global.bind){
			step = 151;
			mode = 1;
		}else{
			global.bind += 1.5;
			if(global.bind>100) global.bind = 100;
			with(objNormal){
				speed = 0; depth = -2;
				image_angle = 5*sin(step/20);
				x = other.x+lengthdir_x(other.attack+168,other.image_angle);
				y = other.y+lengthdir_y(other.attack+168,other.image_angle)+20;
/*
				if(90<other.image_angle && other.image_angle<270){
					image_angle = other.image_angle+180;
					x = other.x+lengthdir_x(other.attack+170,other.image_angle+5);
					y = other.y+lengthdir_y(other.attack+170,other.image_angle+5);
				}else{
					image_angle = other.image_angle;
					x = other.x+lengthdir_x(other.attack+170,other.image_angle-5);
					y = other.y+lengthdir_y(other.attack+170,other.image_angle-5);
				}
*/
				global.HP[global.chara] -= 0.4;

				if(image_index == 5 && Percentage(5)){
					image_index = 0;
				}
				if(global.HP[global.chara]<=0 && !global.retry){

					Particle(global.SprEffect_Particle[20],x,y,25,5,0,0.98,60,60,4,8,10,20,0.3,0.9,0.5);
					Particle(global.SprEffect_Particle[20],x,y,25,5,0,0.98,240,60,4,8,10,20,0.3,0.9,0.5);

					Flash(c_red,0.7,0.1);
					quake(50,15);
					sound_play(global.SndHit_07);
					sound_play(global.SndHit_15);
					sound_play(global.SndHit_06);
					step = 0;
					alarm[11] = 1;
				}
 			}
		}
	}else{
		if(image_angle > dir_chara) image_angle -= 1.5;
		else  image_angle += 1.5;
		if(round(image_angle) == round(dir_chara)) mode = 1;
	}
}
/* */
/*  */
