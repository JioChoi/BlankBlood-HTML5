action_set_relative(1);
{
	with(objE101_Part_0){
		image_angle = image_angle+other.image_angle;
		x = other.x+lengthdir_x(15,other.image_angle-180);
		y = other.y+lengthdir_y(15,other.image_angle-180);
	}
	with(objE101_Part_4){
		x = -250+other.x+lengthdir_x(250,other.image_angle);
		y = other.y+lengthdir_y(50,other.image_angle);
	}
	with(objE101_Part_8){
		x = -250+other.x+lengthdir_x(250,other.image_angle);
		y = other.y+lengthdir_y(50,other.image_angle);
	}

	if(motion == 0 && !global.bind){
		if(Percentage(0.2)){step=0;image_index=0;motion = 1;}
		else if(Percentage(0.2)){step=0;image_index=0;motion = 5;}
	}

	image_speed = 1;

	switch (motion)
	{
	case 0: image_angle = 2+sin(step/30); break;
	case 1: image_angle = 22+sin(step);
		if(step == 1) sound_loop(global.SndBoss[2]);
		if(step>20){
			col = collision_rectangle(x+448+400,y-448-300,x+0,y-448+500,objNormal,0,1);
			with(col){
				if(!global.retry){
					if(crouch){
						if(x>other.x+448) x -= 2;
						else x += 2;
					}else{
						var dir_1; dir_1 = point_direction(x,y,other.x+448,other.y-360);
						motion_add(dir_1,2);
					}
				}
			}

			col = collision_rectangle(x+448-5,y-368-5,x+448+5,y-368+5,objNormal,0,1);
			with(col){
				if(global.bind<0 && !inv){
					sound_play(global.SndHit_08);
					sound_play(global.SndHit_09);
					Particle(global.SprEffect_Particle[21],x,y,30,50,50,0.98,0,360,5,10,10,20,0.1,0.4,0.2);
					global.bind = 100;
					bindkind = 2;
					deadkind = 41;
					cutkind = 0;
					
					step = 0;
					premouse_x = mouse_x;
					premouse_y = mouse_y;
					instance_change(objBind,false);
					with(other){step=0;image_index=0;motion = 2;};
				}
			}
		}
		if(step>100){step=0;image_index=0;motion = 0;sound_stop(global.SndBoss[2]);}
		break;
	case 2 :
		image_speed = 0.4;
		if(step == 80){
			sound_play(global.SndHit_19);
			global.bind = 100;
			instance_create(x,y,objE101_Obj08);
			sound_play(global.SndHit_19);
			fl = Flash(c_black,0,-0.2);
			step=0;image_index=0;motion = 3;
		}else{
			with(objNormal){
				image_alpha = 0;
				x = other.x+448;
				y = other.y-368;
				quake(5,5);
				if(step mod 20 == 0)Particle(global.SprEffect_Particle[21],x,y,30,50,50,0.98,0,360,5,5,10,20,0.1,0.4,0.2);
			}
			if(!global.bind){
				with(objNormal){image_alpha = 1;}
				step=0;image_index=0;motion = 0;sound_stop(global.SndBoss[2]);
			}else {
				global.bind += 2;
				if(global.bind>100) global.bind = 100;
			}
		}
		image_angle = 22+0.5*sin(step*3);
		break;
	case 3 :
		if(step == 20){
			with(fl){
				minus=0.2;
				with(objNormal){x=1472;y=1344;global.bind = -100;sound_stop(global.SndBoss[2]);}
			}
		}
		if(step == 40){fl=0;step=0;image_index=0;motion = 0};
		image_angle = 22+sin(step);
		break;

	case 5 :
		image_angle = -10+0.5*sin(step*2);
		if(step > 79) image_angle = 10;
		if(step>80){
			sound_play(global.SndHit_11);
			sound_play(global.SndHit_17);
			col = collision_rectangle(x+448,y-224,x+704,y-256,objNormal,0,1);
			with(col){
				if(!inv){
					sound_play(global.SndHit_05);
					sound_play(global.SndHit_03);
					sound_play(global.SndHit_06);
					sound_play(global.SndHit_07);
					sound_play(global.SndHit_11);
					voice_play(55);
					quake(50,15);
					Flash(c_red,0.8,0.02);

					dmgkind = 11;
					deadkind = 99;
					pow = 8;
					direct = 260;

					global.HP[global.chara] -= 200+random(10);
					sound_play(global.SndHit_02);
					Particle(global.SprEffect_Particle[20],x,y,150,50,50,0.98,0,180,10,10,10,50,0.1,0.9,0.4);


					step = 0;

					if(global.HP[global.chara]<=0) alarm[11] = 1;
					instance_change(objDamage,false);
				}
			}
			quake(60,30);
			step=0;
			image_index=0;
			motion = 6;
		}
		break;
	case 6 :
		with(objE101_Part_0){
			x = other.x-1000;
			y = other.y-1000;
		}
		with(objE101_Part_4){
			x = other.x-30;
			y = other.y+30;
		}
		with(objE101_Part_8){
			x = other.x-30;
			y = other.y+30;
		}
		image_angle = 0;
		if(step>80){step=0;image_index=0;motion = 0;}
		break;
	default: break;
	}
}
step += 1;
action_set_relative(0);
