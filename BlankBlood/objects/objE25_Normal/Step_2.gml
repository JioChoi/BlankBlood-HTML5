if(motion==0){
	with(objNormal){
		if(other.NoticeZone){
			if(x<other.x){
				other.dir = 1;
			}else if(x>other.x){
				other.dir = -1;
			}
		}
	}
	if(AtkZone){
		step = 0;
		if(c_dst<30){
			if(Percentage(50)) motion = 2;
			else if( (320+64<x) && (x<room_width-(320+64)) ) motion = 5;
		}else{
			if(Percentage(50)) motion = 1;
			else if(Percentage(50) && (320+64<x) && (x<room_width-(320+64)) ) motion = 3;
			else  if( (320+64<x) && (x<room_width-(320+64)) )  motion = 7;
		}
	}
//			( (dir && 320+64<x) || (!dir && x<room_width-(320+64)) ) 
}

	if(!global.bind){
		if(bind){step = 0;motion = 0;}
		bind = 0;
	}
	step_t = floor(step);
	posx_00 = mot_posx_00[motion,step_t];
	posx_01 = mot_posx_01[motion,step_t];
	posx_02 = mot_posx_02[motion,step_t];
	posx_03 = mot_posx_03[motion,step_t];
	posx_04 = mot_posx_04[motion,step_t];
	posx_05 = mot_posx_05[motion,step_t];
	posx_06 = mot_posx_06[motion,step_t];
	posx_07 = mot_posx_07[motion,step_t];
	posx_08 = mot_posx_08[motion,step_t];
	posx_09 = mot_posx_09[motion,step_t];
	posx_10 = mot_posx_10[motion,step_t];

	posy_00 = mot_posy_00[motion,step_t];
	posy_01 = mot_posy_01[motion,step_t];
	posy_02 = mot_posy_02[motion,step_t];
	posy_03 = mot_posy_03[motion,step_t];
	posy_04 = mot_posy_04[motion,step_t];
	posy_05 = mot_posy_05[motion,step_t];
	posy_06 = mot_posy_06[motion,step_t];
	posy_07 = mot_posy_07[motion,step_t];
	posy_08 = mot_posy_08[motion,step_t];
	posy_09 = mot_posy_09[motion,step_t];
	posy_10 = mot_posy_10[motion,step_t];

	angle_00 = mot_angle_00[motion,step_t];
	angle_01 = mot_angle_01[motion,step_t];
	angle_02 = mot_angle_02[motion,step_t];
	angle_03 = mot_angle_03[motion,step_t];
	angle_04 = mot_angle_04[motion,step_t];
	angle_05 = mot_angle_05[motion,step_t];
	angle_06 = mot_angle_06[motion,step_t];
	angle_07 = mot_angle_07[motion,step_t];
	angle_08 = mot_angle_08[motion,step_t];
	angle_09 = mot_angle_09[motion,step_t];
	angle_10 = mot_angle_10[motion,step_t];

	if(step mod 1 == 0 && mot_effect[motion,step_t] != 999){
		if(mot_effect[motion,step_t]<0) quake(abs(mot_effect[motion,step_t]),5);
		else play_SE(mot_effect[motion,step_t]);
	}

	if(dir){
		if(place_free(x+mot_vx[motion,step_t]*spd,y)) x += mot_vx[motion,step_t]*spd;
	}else{
		if(place_free(x-mot_vx[motion,step_t]*spd,y)) x -= mot_vx[motion,step_t]*spd;
	}
	if(place_free(x,y+mot_vx[motion,step_t]*spd)) y += mot_vy[motion,step_t]*spd;

	if(mot_kind[motion,step_t]){
		step += spd;
		if(mot_kind[motion,step_t]==2){
			Golem_Hit();
		}else if(mot_kind[motion,step_t]==3||mot_kind[motion,step_t]==4){
			if( !global.bind) Golem_Bind();
			else if(global.bind && bind){
				with(objNormal){
					global.bind += 1.5+other.mot_binddmg[other.motion,other.step_t];
					if(global.bind>100) global.bind = 100;
					global.HP[global.chara] -= other.mot_binddmg[other.motion,other.step_t];
					speed = 0;
					if(other.dir) x = other.x+other.mot_bpointx[other.motion,other.step_t];
					else  x = other.x-other.mot_bpointx[other.motion,other.step_t];
					y = other.y+other.mot_bpointy[other.motion,other.step_t];
					
					if(global.HP[global.chara]<=0 && !global.retry){step = 0;alarm[11] = 1;}
				}
			}
			if(mot_kind[motion,step_t]==4 && !bind){
				step_t = 0;
				step = 0;
				motion = 0;
			}
		}else if(mot_kind[motion,step_t]==5){
			if(step mod 1 == 0) Golem_Hit2();
			with(objNormal){
				global.bind += 1.5+other.mot_binddmg[other.motion,other.step_t];
				if(global.bind>100) global.bind = 100;
				global.HP[global.chara] -= other.mot_binddmg[other.motion,other.step_t];
				speed = 0;
				dir = !(!other.dir);
				if(other.dir) x = other.x+other.mot_bpointx[other.motion,other.step_t];
				else  x = other.x-other.mot_bpointx[other.motion,other.step_t];
				y = other.y+other.mot_bpointy[other.motion,other.step_t];
			}
		}else{
			//global.bind = 0;
			bind = 0;
		}
	}else{
		motion = abs(mot_kind[motion,step_t]);
		step = 0;
		step_t = 0;
	}
