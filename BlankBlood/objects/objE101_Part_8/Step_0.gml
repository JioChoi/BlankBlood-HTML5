action_set_relative(1);
with(objNormal){
	other.dis = point_distance(x,y,other.x+22*32,other.y-32*10);
	other.dire = point_direction(x,y,other.x+22*32,other.y-32*10);
}

if(motion == 0){
	if(dis<300 && Percentage(3)){step=0;motion = 1;}
}
{
	switch (motion)
	{
	case 0:
		if(dire>180) dire -= 360;
		if(30<dire) dire = 30;
		else if(-70>dire) dire = -70;
		if(dire>image_angle) rot_spd += 0.05;
		else rot_spd -= 0.05;

		if(rot_spd>3) rot_spd = 3;
		else if(rot_spd<-3) rot_spd = -3;

		image_angle += rot_spd+0.2*sin(step*2);

		posy=5*sin(step/30)
		index = 6;
		break;
	case 1:
		posy=5*sin(step/30);
		if(step<40){
			if(step<20){
				if(dire>180) dire -= 360;
				if(30<dire) dire = 30;
				else if(-70>dire) dire = -70;
				if(dire>image_angle) rot_spd += 0.5;
				else rot_spd -= 0.5;

				if(rot_spd>2) rot_spd = 2;
				else if(rot_spd<-2) rot_spd = -2;

				image_angle += rot_spd+sin(step*2);
			}else{
				rot_spd *=0.6;
			}
			posx = 0;
			index = 0;
		}else{
			if(step == 41){index = 1;posx = 10}
			else if(step == 43){index = 2;posx = 30}
			else if(step == 45){
				index = 3;posx = 50
				var px,py;
				px = x+posx+21*32;
				py = y+posy-32*10;
				col = collision_rectangle(px+lengthdir_x(300,image_angle-180),py+lengthdir_y(300,image_angle-180),px+lengthdir_x(240,image_angle-180),py+lengthdir_y(240,image_angle-180),objNormal,0,1);
				with(col){
					if(!global.bind && !global.retry){
						global.bind = 100;
						bindkind = 2;
						deadkind = 41;
						cutkind = 0;
						sound_play(global.SndHit_08);
						Particle(global.SprEffect_Particle[21],x,y,20,50,50,0.98,0,360,5,5,10,20,0.1,0.4,0.2);
						step = 0;
						premouse_x = mouse_x;
						premouse_y = mouse_y;
						instance_change(objBind,false);

						var px,py;
						px = other.x+other.posx+21*32;
						py = other.y+other.posy-32*10+4;
						px = px + lengthdir_x(207, other.image_angle-180);
						py = py + lengthdir_y(207, other.image_angle-180);
						sound_loop(global.SndBoss[0]);
						instance_create(px,py,objE101_Obj07);
						with(other){step=0;index=0;motion = 2;}
					}
				}
			}else if(step == 47){index = 4;posx = 60}
			else if(step == 49){index = 5;posx = 50}
			else if(step == 55){index = 4;posx = 47}
			else if(step == 57){index = 3;posx = 34}
			else if(step>62){step=0;index=0;motion = 0};
		}
		break;
	case 2:
			index = 4;
			if(dire>180) dire -= 360;
			if(-15>image_angle) rot_spd += 0.8;
			else rot_spd -= 0.8;

			if(rot_spd>1) rot_spd = 1;
			else if(rot_spd<-1) rot_spd = -1;

			image_angle += rot_spd+0.5*sin(step*3);

			with(objNormal){
				quake(1,1);effect_create_above(ef_smokeup,x-40+random(40),y-40+random(40),round(random(1)),c_white);
				if(Percentage(70)) Particle(global.SprEffect_Particle[21],x,y,2,2,5,0.98,0,360,0,1,10,20,0.1,0.3,0.2);
				if(global.HP[global.chara]<=0 && !other.flag){
					other.flag = true;
					step = 1;
					deadkind = 31;
					quake(50,15);
					sound_play(global.VicDmg_57[global.chara]);
					inv = 1;
					global.bind = true;
					global.retry = true;
					image_alpha = 1;
					image_index = 0;
					alarm[11] = 1;
				}else global.HP[global.chara] -= 0.3;

				if(global.HP[global.chara]<=0){speed = 0;gravity = 0;}

				var px,py;
				px = other.x+other.posx+21*32;
				py = other.y+other.posy-32*10;
				if(!dir){
					x = px + lengthdir_x(250, other.image_angle-180);
					y = py + lengthdir_y(250, other.image_angle-180);
				}else{
					x = px + lengthdir_x(240, other.image_angle-180);
					y = py + lengthdir_y(240, other.image_angle-180);
				}
				image_angle = other.image_angle;

				if(Percentage(5)) image_index = 0;
			}

			with(objE101_Obj07){
				var px,py;
				px = other.x+other.posx+21*32;
				py = other.y+other.posy-32*10+4;
				x = px + lengthdir_x(207, other.image_angle-180);
				y = py + lengthdir_y(207, other.image_angle-180);
				image_angle = other.image_angle;
			}

			if(!global.bind){
				sound_stop(global.SndBoss[0]);		
				with(objE101_Obj07){instance_destroy()};
				step=0;index=0;motion = 0;
			}else {
				global.bind += 0.7;
				if(global.bind>100) global.bind = 100;
			}
		break;
	default: break;
	}
}
step += 1;
action_set_relative(0);
