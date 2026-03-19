{
	if(step == 0){
		Effect(x-10+random(20),y-10+random(20),1);
		quake(20,5);
		Flash(c_red,0.2,0.05);
		voice_play(VicNormalDmg(0));
		global.bind = -100;
		global.fdown = -100;
		inv = 1;
		image_alpha = 1;
		dashKey = 0;
		dash = false;
		crouch = false;
		cutkind = 0;

		speed = pow;
		direction = direct;
	}

	switch (dmgkind)
	{
	/*-------------���---------------*/
	case 11:
		if(step > 10){
			alarm[1] = 60;
			instance_change(objNormal,false);
		}
		break;
	case 12:
		break;
	case 13:
		break;
	case 21:
		if(step > 14){
			alarm[1] = 60;
			instance_change(objNormal,false);
		}
		break;
	case 211:
		inv = 0;
		if(step > 14){
			alarm[1] = 60;
			instance_change(objNormal,false);
		}
		break;
	case 22:
		if(place_free(x,y-1)) y = y-1;
		if(hspeed>0){
			if(!dir) dmgkind = 221;
			else dmgkind = 222;
		}else{
			if(!dir) dmgkind = 222;
			else dmgkind = 221;
		}
		break;
	case 23:
		break;
	case 31:
		if(step > 10){
			alarm[1] = 60;
			instance_change(objBind,false);
		}
		break;
	case 32:
		break;
	case 33:
		break;


	/*-------------�ڍׂȏ���----------------*/
	case 221:
		if(air){
			gravity = global.g*0.7;
			gravity_direction = 270;

		}else{
			jump = true;
			gravity = 0;
			gravity_direction = 0;

			deadkind = 10;
			if(global.HP[global.chara]<=0) alarm[11] = 1;
			else alarm[1] = 60;
			instance_change(objNormal,false);
		}
		if(!place_free(x+hspeed,y)){
			if(abs(hspeed)<15 && vspeed){
				sound_play(global.SndHit_03);
				global.HP[global.chara] -= random(5);
				dmgkind = 222;
				hspeed = -hspeed*0.2;
				deadkind = 10;
				if(global.HP[global.chara]<=0) alarm[11] = 1;
			}else{
				sound_play(global.SndHit_04);
				global.HP[global.chara] -= random(5);
				dmgkind = 2212;
				step = 0;
				speed_tmp = hspeed/3;
			}
		}
		break;
	case 2212:
		if(step==1){
			if(global.HP[global.chara]<=0) voice_play(VicNormalDmg(1));
			sound_play(global.SndHit_06);
			global.HP[global.chara] -= abs(speed_tmp)/2;
			Flash(c_red,0.2,0.02);
			Particle(global.SprEffect_Particle[21],x,y,20,50,50,0.98,0,360,5,10,10,20,0.1,0.4,0.2);
			Particle(global.SprEffect_Particle[0],x,y,abs(speed_tmp)/3,50,50,0.98,0,360,5,10,10,20,0.2,0.5,1);
			quake(15,abs(speed_tmp));
		}
		x = xprevious;
		y = yprevious;
		speed = 0;
		gravity = 0;
		gravity_direction = 0;
		if(step>abs(speed_tmp)){
			dmgkind = 222;
			hspeed = -speed_tmp*0.4;
			deadkind = 10;
			if(global.HP[global.chara]<=0) {global.voice=0;alarm[11] = 1;}
		}
		break;
	case 222:
		if(air){
			gravity = global.g*0.7;
			gravity_direction = 270;

		}else{
			jump = true;
			gravity = 0;
			gravity_direction = 0;

			deadkind = 10;
			if(global.HP[global.chara]<=0) alarm[11] = 1;
			else alarm[1] = 60;
			instance_change(objNormal,false);
		}

		if(!place_free(x+hspeed,y)){
			if(abs(hspeed)<15 && vspeed){
				sound_play(global.SndHit_03);
				global.HP[global.chara] -= random(5);
				dmgkind = 221;
				hspeed = -hspeed*0.2;
				deadkind = 10;
				if(global.HP[global.chara]<=0) alarm[11] = 1;
			}else{
				sound_play(global.SndHit_04);
				global.HP[global.chara] -= random(5);
				dmgkind = 2222;
				step = 0;
				speed_tmp = hspeed/3;
			}
		}
		break;
	case 2222:
		if(step==1){
			if(global.HP[global.chara]<=0) voice_play(VicNormalDmg(1));
			sound_play(global.SndHit_06);
			global.HP[global.chara] -= abs(speed_tmp)/2;
			Flash(c_red,0.2,0.02);
			Particle(global.SprEffect_Particle[21],x,y,20,50,50,0.98,0,360,5,10,10,20,0.1,0.4,0.2);
			Particle(global.SprEffect_Particle[0],x,y,abs(speed_tmp)/3,50,50,0.98,0,360,5,10,10,20,0.2,0.5,1);
			quake(15,abs(speed_tmp));
		}
		x = xprevious;
		y = yprevious;
		speed = 0;
		gravity = 0;
		gravity_direction = 0;
		if(step>abs(speed_tmp)){
			dmgkind = 221;
			hspeed = -speed_tmp*0.4;
			deadkind = 10;
			if(global.HP[global.chara]<=0) {global.voice=0;alarm[11] = 1;}
		}
		break;
	case 80:
		if(image_index>41) image_speed = 0;
		else image_speed = 0.3;
		if(image_index>38 && Percentage(3)) image_index = 38;
		depth = 1;
		break;
	/*----------------------------------------*/
	default: break;
	}
	step += 1;
}

/* */
image_angle = 0;
/* */
/*  */
