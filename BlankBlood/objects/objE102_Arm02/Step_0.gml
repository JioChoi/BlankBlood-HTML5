{
	with(objNormal){
		other.dir_chara = point_direction(other.x,other.y,x,y)
	}

	if(mode==1){
		if(sound_isplaying(global.VicDmg_58[global.chara])) sound_stop(global.VicDmg_58[global.chara]);
		        if(step<010) { image_speed = 0; }
		else if(step<030) { attack += 10; 
					if(collision_point(x+lengthdir_x(attack+170,image_angle),y+lengthdir_y(attack+170,image_angle),objNormal,0,1)){
						with(objNormal){
							if(!inv && !global.bind){
								global.bind = 100;
								global.fdown = -100;
								bindkind = 5;
								deadkind = 81;
								cutkind = 0;

								global.HP[global.chara] -= 10+random(5);
								sound_play(global.SndHit_07);
								if(Percentage(40)) sound_play(global.SndHit_07);
								if(Percentage(40)) sound_play(global.SndHit_08);
								if(Percentage(40)) sound_play(global.SndHit_15);
								quake(10,2);
								Flash(c_red,0.8,0.1);
								step = 0;
								premouse_x = mouse_x;
								premouse_y = mouse_y;
								instance_change(objBind,false);
								with(other){
									step = 0;
		 		 					mode = 2;
								}
							}
						} 
		 			}
				}
		else if(step<100) {}
		else if(attack<0)  { step = 0; attack = 0; mode = false; image_speed = 0; }
		else { attack -= 5;image_speed = 0; }
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
				step = 100;
				mode = 1;
			}
		}

		if(!global.bind){
			step = 100;
			mode = 1;
		}else{
			step += 1;
			if(step < 80){
				global.bind += 1;
				if(global.bind>100) global.bind = 100;
				with(objNormal){
					speed = 0; depth = -2;
					x = other.x+lengthdir_x(other.attack+170,other.image_angle);
					y = other.y+lengthdir_y(other.attack+170,other.image_angle);
					if(90<other.image_angle && other.image_angle<270) image_angle = other.image_angle+180;
					else image_angle = other.image_angle;
					global.HP[global.chara] -= 0.05;

					if(image_index == 5 && Percentage(5)){
						if(Percentage(50)) voice_play(VicNormalDmg(0));
						sound_play(global.SndHit_05);
						image_index = 0;
					}
					if(global.HP[global.chara]<=0 && !global.retry){
						quake(50,15);
						voice_play(VicNormalDmg(1));
						step = 0;
						alarm[11] = 1;
					}
 				}
			}else if(step<81){
				sound_play(global.SndBoss[1]);
				Particle(global.SprEffect_Particle[20],x+lengthdir_x(attack+170,image_angle),y+lengthdir_y(attack+170,image_angle),5,5,0,0.98,60,60,0,8,10,20,0.1,0.7,0.5);
				Particle(global.SprEffect_Particle[20],x+lengthdir_x(attack+170,image_angle),y+lengthdir_y(attack+170,image_angle),5,5,0,0.98,270,60,0,8,10,20,0.1,0.7,0.3);
				if(Percentage(10)) sound_play(global.SndHit_07);
				if(Percentage(10)) sound_play(global.SndHit_08);
				if(Percentage(10)) sound_play(global.SndHit_15);
				quake(10,2);
				Flash(c_red,0.8,0.1);
				sound_play(global.VicDmg_58[global.chara]);
			}else{
				with(objNormal){
					speed = 0; depth = -2;
					x = other.x+lengthdir_x(other.attack+170,other.image_angle);
					y = other.y+lengthdir_y(other.attack+170,other.image_angle);
					other.image_angle += -1+random(2);
					if(90<other.image_angle && other.image_angle<270) image_angle = other.image_angle+180;
					else image_angle = other.image_angle;

					global.HP[global.chara] -= random(1);
					if(global.HP[global.chara]<=0){
						if(!global.retry){
							step = 0;
							deadkind = 81;
							alarm[11] = 1;
						}
						if(other.step == 200){image_index = 4;}
					}
				}

				image_speed = 1;
				Particle(global.SprEffect_Particle[20],x+lengthdir_x(attack+170,image_angle),y+lengthdir_y(attack+170,image_angle),5,5,0,0.98,60,60,0,8,10,20,0.1,0.7,0.5);
				Particle(global.SprEffect_Particle[20],x+lengthdir_x(attack+170,image_angle),y+lengthdir_y(attack+170,image_angle),5,5,0,0.98,270,60,0,8,10,20,0.1,0.7,0.3);
				if(Percentage(10)) sound_play(global.SndHit_07);
				if(Percentage(10)) sound_play(global.SndHit_08);
				if(Percentage(10)) sound_play(global.SndHit_15);
				quake(5,2);
				if(Percentage(5)) Flash(c_red,0.8,0.1);
				with(objNormal){image_index = 1+random(5);}

				if(!sound_isplaying(global.VicDmg_58[global.chara]) && global.retry){
					image_speed = 0;
					with(objNormal){
						sound_stop(global.SndBoss[1]);
						image_angle = 0;
						speed = 0;
						step = 1;
						deadkind = 13;
						cutkind = 0;
						global.bind = -100;
						alarm[11] = 1;
					}
 				}

				if(!global.bind){ step = 100;mode = 1; }
				else {
					global.bind += 5;
					if(global.bind>100) global.bind = 100;
				}
			}
		}
	}else{
		if(image_angle > dir_chara) image_angle -= 1.2;
		else  image_angle += 1.2;
		if(round(image_angle) == round(dir_chara)) mode = 1;
	}
}
