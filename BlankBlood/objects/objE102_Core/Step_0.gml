global.BossHP = HP;
{
	if(shreding) with(objNormal){ if(y < 1312+32*3) y += 0.7; }
	col = collision_rectangle(448,1348,448+32*5,1312+32*3,objNormal,0,1);
	with(col){
		other.shreding = true;
		global.retry = true;
		if(!global.bind){
			global.bind = 100;
			bindkind = 6;
			deadkind = 81;
			Particle(global.SprEffect_Particle[20],x,y+32,30,50,50,0.98,180,180,5,10,10,20,0.1,0.4,0.2);
			global.HP[global.chara] -= random(5);
			sound_play(global.SndHit_08);
			sound_play(global.SndBoss[0]);
			step = 0;
			premouse_x = mouse_x;
			premouse_y = mouse_y;
			temp2 = round(20+random(20));
			speed = 0;
			y=1300;
			if(cutkind == 1){
				image_angle = 180;
			}else y+=0;
			instance_change(objBind,false);
		}else{
			Particle(global.SprEffect_Particle[20],x,y+32,10,50,50,0.98,0,180,0,5,10,20,0.1,0.8,0.6);
			speed = 0;
			temp = random(0.5);
			if(place_free(x,y+temp)) y += temp;
			if(other.shr mod temp2 == 0){
				if(sound_isplaying(global.SndBoss[0])){
					if(Percentage(50)) sound_play(global.SndHit_06);
					if(Percentage(50)) sound_play(global.SndHit_07);
					if(Percentage(50)) sound_play(global.SndHit_08);
					if(Percentage(50)) sound_play(global.SndHit_15);
					Particle(global.SprEffect_Particle[20],x,y,10,50,50,0.98,0,180,5,15,10,20,0.1,0.8,0.6);
					quake(10,2);
					voice_play(VicElectricDmg(0));
					Flash(c_red,0.4,0.1);
				}
				global.HP[global.chara] -= random(2);
				temp2 = round(20+random(20));
			}
			global.HP[global.chara] -= random(2);
			if(global.HP[global.chara]<0 && !other.shred){
				other.shred = true;;
				Particle(global.SprEffect_Particle[20],x,y,20,50,50,0.98,0,180,10,15,10,20,0.1,0.8,0.6);
				voice_play(VicElectricDmg(1));
				inv = true;
				global.voice = 0;
				sound_play(global.SndHit_06);
				sound_play(global.SndHit_07);
				sound_play(global.SndHit_15);
				Flash(c_black,0.1,-0.005);
				alarm[11] = 1;
			}
			global.bind += 10;
			if(global.bind>100) global.bind = 100;
		}
	}
	shr+=1;
}

	col = collision_rectangle(x-20,y-200,x+20,y-170,objNormal,0,1);
	with(col){
		if(!global.bind && vspeed>0 && !inv){
			sound_play(global.SndBoss[1]);
			with(other){roll=true;motion=103;step_tmp=0;}
			global.retry = false;
			global.bind = 100;
			bindkind = 6;
			deadkind = 10;
			cutkind = 0;
			global.HP[global.chara] -= random(5);
			quake(10,5);
			sound_play(global.SndHit_06);
			voice_play(VicNormalDmg(0));
			step = 0;
			premouse_x = mouse_x;
			premouse_y = mouse_y;
			instance_change(objBind,false);
		}
	}


	if(roll){
		depth = -10;
		roll+=1;
		if(roll == 70 || roll == 140){
			with(objNormal){
				temp = round(other.image_index);
				global.HP[global.chara] -= 70+random(5);
				if(Percentage(70)) sound_play(global.SndHit_06);
				if(Percentage(70)) sound_play(global.SndHit_07);
				if(Percentage(70)) sound_play(global.SndHit_08);
				if(Percentage(70)) sound_play(global.SndHit_15);
				Particle(global.SprEffect_Particle[20],x,y,15,50,50,0.98,60,60,5,15,10,20,0.1,0.8,0.6);
				quake(5,40);
				voice_play(VicElectricDmg(0));
				Flash(c_red,0.7,0.1);
			}
		}

		with(objNormal){
			if(!global.bind && !global.retry){other.roll=false;sound_stop(global.SndBoss[1]);}
			if(other.roll<70){temp2 = 0}
			if(70<other.roll && other.roll<120){other.image_index = temp+round(random(1));temp2 = 20;}
			if(140<other.roll && other.roll<210){other.image_index = temp+round(random(1));temp2 = 40;}
			if(cutkind!=1) speed = 0;
			global.HP[global.chara] -= 0.1;
			if(other.roll==230){
				global.HP[global.chara]=0;
				alarm[11] = 1;

				if(Percentage(80)) sound_play(global.SndHit_06);
				if(Percentage(80)) sound_play(global.SndHit_07);
				if(Percentage(80)) sound_play(global.SndHit_08);
				if(Percentage(80)) sound_play(global.SndHit_15);
				Particle(global.SprEffect_Particle[20],x,y,35,50,50,0.98,80,20,10,15,10,20,0.1,0.8,0.7);
				Particle(global.SprEffect_Particle[20],x,y,15,50,50,0.98,80,20,0,5,10,20,0.1,0.8,0.7);
				quake(30,5);
				voice_play(VicElectricDmg(0));
				Flash(c_red,0.7,0.1);
			}else if(230<other.roll && other.roll<360){
				if(Percentage(4)){sound_play(global.SndHit_06);Flash(c_red,0.4,0.1);}
				if(Percentage(4)){sound_play(global.SndHit_07);Flash(c_red,0.4,0.1);}
				if(Percentage(4)){sound_play(global.SndHit_08);Flash(c_red,0.4,0.1);}
				if(Percentage(4)){sound_play(global.SndHit_15);Flash(c_red,0.4,0.1);}
				if(Percentage(40)) Particle(global.SprEffect_Particle[20],x,y,10,50,50,0.98,80,20,0,5,10,20,0.1,0.8,0.7);
				if(Percentage(40)) Particle(global.SprEffect_Particle[20],other.x,other.y+200,10,0,100,0.98,0,180,0,0,10,20,0.1,0.8,0.7);
				speed = 0;
				y += 1;
			}else if(other.roll==360){
				global.voice = false;
				other.roll=false;
				global.bind = -100;
			}else{
				x = other.x+lengthdir_x(205-temp2,other.angle[0]+90);
				y = other.y+lengthdir_y(205-temp2,other.angle[0]+90);
				if(Percentage(2)){
					voice_play(VicNormalDmg(0));
				}
			}
			global.bind += random(4);
			if(global.bind>100) global.bind = 100;
		}
	}else depth = 1000;

step = round(step_tmp);
var part,inst;
/*
	col = collision_rectangle(x,y-100,x-100,y+100,objNormal,0,1)
	with(col){x=x-20;hspeed=-5}
	col = collision_rectangle(x,y-100,x+100,y+100,objNormal,0,1)
	with(col){x=x+20;hspeed=+5}
*/
switch (motion)
{
case 0:
	for(part=0;part<=8;part+=1){
		angle[part] = mot00_ang[part,step];
		posx[part] = mot00_posx[part,step];
		posy[part] = mot00_posy[part,step];
	}
	if(mot00_ang[0,step+1]==-999){
		if(Percentage(30)){
			if(Percentage(4) && motion == 0 && !global.retry){step_tmp = 0;motion=100;}
			if(Percentage(7) && motion == 0 && !global.retry){step_tmp = 0;motion=101;}
		}else{
			if(y < 542){
				if(Percentage(2) && motion == 0){step_tmp = 0;motion=1;}
			}else if(y > 864){
				if(Percentage(2) && motion == 0){step_tmp = 0;motion=2;}
			}else{
				if(Percentage(3) && motion == 0){step_tmp = 0;motion=1;}
				if(Percentage(2) && motion == 0){step_tmp = 0;motion=2;}
			}
		}
	}else step_tmp+=0.2;
	break;
case 1:
	if(step==16){
		quake(20,5);sound_play(global.SndHit_11);
		col = collision_circle(x+470,y+310,40,objNormal,0,1)
		col2 = collision_circle(x-440,y+310,40,objNormal,0,1);
		with(col){
			if(!global.bind && !inv){
				with(other){step_tmp=0;motion=51};
				Flash(c_red,0.4,0.02);
				global.bind = 50;
				bindkind = 5;
				deadkind = 10;
				cutkind = 0;
				global.HP[global.chara] -= 10+random(5);
				quake(50,15);
				sound_play(global.SndHit_05);
				sound_play(global.SndHit_03);
				step = 0;
				premouse_x = mouse_x;
				premouse_y = mouse_y;
				bind_py = 270;
				press_dir = 0;
				instance_change(objBind,false);
			}
		}
		with(col2){
			if(!global.bind && !inv){
				with(other){step_tmp=0;motion=51};
				Flash(c_red,0.4,0.02);
				global.bind = 50;
				bindkind = 5;
				deadkind = 10;
				cutkind = 0;
				global.HP[global.chara] -= 10+random(5);
				quake(50,15);
				sound_play(global.SndHit_05);
				sound_play(global.SndHit_03);
				step = 0;
				premouse_x = mouse_x;
				premouse_y = mouse_y;
				bind_py = 300;
				press_dir = 180;
				instance_change(objBind,false);
			}
		}
	}

	if(step==47){
		quake(20,5);sound_play(global.SndHit_11);
		col = collision_circle(x+460,y-10,40,objNormal,0,1)
		col2 = collision_circle(x-430,y+30,40,objNormal,0,1);
		with(col){
			if(!global.bind && !inv){
				with(other){step_tmp=0;motion=52};
				Flash(c_red,0.4,0.02);
				global.bind = 50;
				bindkind = 5;
				deadkind = 10;
				cutkind = 0;
				global.HP[global.chara] -= 10+random(5);
				quake(50,15);
				sound_play(global.SndHit_05);
				sound_play(global.SndHit_03);
				step = 0;
				premouse_x = mouse_x;
				premouse_y = mouse_y;
				bind_py = -10;
				press_dir = 0;
				instance_change(objBind,false);
			}
		}
		with(col2){
			if(!global.bind && !inv){
				with(other){step_tmp=0;motion=52};
				Flash(c_red,0.4,0.02);
				global.bind = 50;
				bindkind = 5;
				deadkind = 10;
				cutkind = 0;
				global.HP[global.chara] -= 10+random(5);
				quake(50,15);
				sound_play(global.SndHit_05);
				sound_play(global.SndHit_03);
				step = 0;
				premouse_x = mouse_x;
				premouse_y = mouse_y;
				bind_py = 30;
				press_dir = 180;
				instance_change(objBind,false);
			}
		}

	}
	if(step==59)y+=2;
	if(step==60)y+=3;
	if(step==61)y+=7;
	if(step==62)y+=10;
	if(step==63)y+=7;
	if(step==64)y+=3;
	if(step==65)y+=2;
	for(part=0;part<=8;part+=1){
		angle[part] = mot01_ang[part,step];
		posx[part] = mot01_posx[part,step];
		posy[part] = mot01_posy[part,step];
	}
	if(mot01_ang[0,step+1]==-999){step_tmp=0;motion=0}
	else step_tmp+=0.5;
	break;
case 2:
	if(step_tmp==36){
		quake(20,5);sound_play(global.SndHit_11);
		col = collision_circle(x+460,y-130,40,objNormal,0,1)
		col2 = collision_circle(x-430,y-100,40,objNormal,0,1);
		with(col){
			if(!global.bind && !inv){
				with(other){step_tmp=0;motion=53};
				Flash(c_red,0.4,0.02);
				global.bind = 50;
				bindkind = 5;
				deadkind = 10;
				cutkind = 0;
				global.HP[global.chara] -= 10+random(5);
				quake(50,15);
				sound_play(global.SndHit_05);
				sound_play(global.SndHit_03);
				step = 0;
				premouse_x = mouse_x;
				premouse_y = mouse_y;
				bind_py = -130;
				press_dir = 0;
				instance_change(objBind,false);
			}
		}
		with(col2){
			if(!global.bind && !inv){
				with(other){step_tmp=0;motion=53};
				Flash(c_red,0.4,0.02);
				global.bind = 50;
				bindkind = 5;
				deadkind = 10;
				cutkind = 0;
				global.HP[global.chara] -= random(5);
				quake(50,15);
				sound_play(global.SndHit_05);
				sound_play(global.SndHit_03);
				step = 0;
				premouse_x = mouse_x;
				premouse_y = mouse_y;
				bind_py = -100;
				press_dir = 180;
				instance_change(objBind,false);
			}
		}
	}
	if(step_tmp==66){
		quake(20,5);sound_play(global.SndHit_11);
		col = collision_circle(x+450,y+170,40,objNormal,0,1)
		col2 = collision_circle(x-430,y+130,40,objNormal,0,1);
		with(col){
			if(!global.bind && !inv){
				with(other){step_tmp=0;motion=54};
				Flash(c_red,0.4,0.02);
				global.bind = 50;
				bindkind = 5;
				deadkind = 10;
				cutkind = 0;
				global.HP[global.chara] -= 10+random(5);
				quake(50,15);
				sound_play(global.SndHit_05);
				sound_play(global.SndHit_03);
				step = 0;
				premouse_x = mouse_x;
				premouse_y = mouse_y;
				bind_py = 170;
				press_dir = 0;
				instance_change(objBind,false);
			}
		}
		with(col2){
			if(!global.bind && !inv){
				with(other){step_tmp=0;motion=54};
				Flash(c_red,0.4,0.02);
				global.bind = 50;
				bindkind = 5;
				deadkind = 10;
				cutkind = 0;
				global.HP[global.chara] -= 10+random(5);
				quake(50,15);
				sound_play(global.SndHit_05);
				sound_play(global.SndHit_03);
				step = 0;
				premouse_x = mouse_x;
				premouse_y = mouse_y;
				bind_py = 130;
				press_dir = 180;
				instance_change(objBind,false);
			}
		}

	}
	if(step==1)y-=2;
	if(step==2)y-=3;
	if(step==3)y-=7;
	if(step==4)y-=10;
	if(step==5)y-=7;
	if(step==6)y-=3;
	if(step==7)y-=2;
	for(part=0;part<=8;part+=1){
		angle[part] = mot02_ang[part,step];
		posx[part] = mot02_posx[part,step];
		posy[part] = mot02_posy[part,step];
	}
	if(mot02_ang[0,step+1]==-999){step_tmp=0;motion=0}
	else step_tmp+=0.5;
	break;
case 51:
	with(objNormal){
		speed = 0;
		y = other.y+bind_py;
		move_contact_solid(press_dir,-1);
		global.HP[global.chara] -= 0.05;
	}
	if(global.bind==100){
		with(objNormal){
			if(!inv){
				sound_play(global.SndHit_05);
				sound_play(global.SndHit_03);
				sound_play(global.SndHit_06);
				sound_play(global.SndHit_07);
				sound_play(global.SndHit_11);
				voice_play(55);
				quake(50,15);
				Flash(c_red,0.8,0.02);
				dmgkind = 10;
				deadkind = 10;
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
	}
	if(!global.bind){step_tmp=17;motion=1}
	else {
		global.bind += 1.5;
		if(global.bind>100) global.bind = 100;
	}
	for(part=0;part<=8;part+=1){
		angle[part] = mot51_ang[part,step];
		posx[part] = mot51_posx[part,step];
		posy[part] = mot51_posy[part,step];
	}
	if(mot51_ang[0,step+1]==-999){step_tmp=0;motion=51}
	else step_tmp+=0.5;
	break;
case 52:
	with(objNormal){
		speed = 0;
		y = other.y+bind_py;
		move_contact_solid(press_dir,-1);
		global.HP[global.chara] -= 0.05;
	}
	if(global.bind==100){
		with(objNormal){
			if(!inv){
				sound_play(global.SndHit_05);
				sound_play(global.SndHit_03);
				sound_play(global.SndHit_06);
				sound_play(global.SndHit_07);
				sound_play(global.SndHit_11);
				voice_play(55);
				quake(50,15);
				Flash(c_red,0.8,0.02);
				dmgkind = 10;
				deadkind = 10;
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
	}
	if(!global.bind){step_tmp=48;motion=1}
	else {
		global.bind += 1.5;
		if(global.bind>100) global.bind = 100;
	}
	for(part=0;part<=8;part+=1){
		angle[part] = mot52_ang[part,step];
		posx[part] = mot52_posx[part,step];
		posy[part] = mot52_posy[part,step];
	}
	if(mot52_ang[0,step+1]==-999){step_tmp=0;motion=52}
	else step_tmp+=0.5;
	break;
case 53:
	with(objNormal){
		speed = 0;
		y = other.y+bind_py;
		move_contact_solid(press_dir,-1);
		global.HP[global.chara] -= 0.05;
	}
	if(global.bind==100){
		with(objNormal){
			if(!inv){
				sound_play(global.SndHit_05);
				sound_play(global.SndHit_03);
				sound_play(global.SndHit_06);
				sound_play(global.SndHit_07);
				sound_play(global.SndHit_11);
				voice_play(55);
				quake(50,15);
				Flash(c_red,0.8,0.02);
				dmgkind = 10;
				deadkind = 10;
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
	}
	if(!global.bind){step_tmp=37;motion=2}
	else {
		global.bind += 1.5;
		if(global.bind>100) global.bind = 100;
	}
	for(part=0;part<=8;part+=1){
		angle[part] = mot53_ang[part,step];
		posx[part] = mot53_posx[part,step];
		posy[part] = mot53_posy[part,step];
	}
	if(mot53_ang[0,step+1]==-999){step_tmp=0;motion=53}
	else step_tmp+=0.5;
	break;
case 54:
	with(objNormal){
		speed = 0;
		y = other.y+bind_py;
		move_contact_solid(press_dir,-1);
		global.HP[global.chara] -= 0.05;
	}
	if(global.bind==100){
		with(objNormal){
			if(!inv){
				sound_play(global.SndHit_05);
				sound_play(global.SndHit_03);
				sound_play(global.SndHit_06);
				sound_play(global.SndHit_07);
				sound_play(global.SndHit_11);
				voice_play(55);
				quake(50,15);
				Flash(c_red,0.8,0.02);
				dmgkind = 10;
				deadkind = 10;
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
	}
	if(!global.bind){step_tmp=67;motion=2}
	else {
		global.bind += 1.5;
		if(global.bind>100) global.bind = 100;
	}
	for(part=0;part<=8;part+=1){
		angle[part] = mot54_ang[part,step];
		posx[part] = mot54_posx[part,step];
		posy[part] = mot54_posy[part,step];
	}
	if(mot54_ang[0,step+1]==-999){step_tmp=0;motion=54}
	else step_tmp+=0.5;
	break;
case 100:
	if(step_tmp==2){
		sound_play(global.SndShot_1);
		inst = instance_create(x+96,y,objE102_Bullet_1);
		inst.speed = 5;
		inst.direction = 60;
		inst = instance_create(x-96,y,objE102_Bullet_1);
		inst.speed = 5;
		inst.direction = 120;
	}
	if(step_tmp==6){
		sound_play(global.SndShot_1);
		inst = instance_create(x+96,y+32,objE102_Bullet_1);
		inst.speed = 5;
		inst.direction = 50;
		inst = instance_create(x-96,y+32,objE102_Bullet_1);
		inst.speed = 5;
		inst.direction = 130;
	}
	if(step_tmp==10){
		sound_play(global.SndShot_1);
		inst = instance_create(x+96,y+64,objE102_Bullet_1);
		inst.speed = 5;
		inst.direction = 40;
		inst = instance_create(x-96,y+64,objE102_Bullet_1);
		inst.speed = 5;
		inst.direction = 140;
	}
	if(step_tmp==14){
		sound_play(global.SndShot_1);
		inst = instance_create(x+96,y+96,objE102_Bullet_1);
		inst.speed = 5;
		inst.direction = 30;
		inst = instance_create(x-96,y+96,objE102_Bullet_1);
		inst.speed = 5;
		inst.direction = 150;
	}
	for(part=0;part<=8;part+=1){
		angle[part] = mot00_ang[part,step];
		posx[part] = mot00_posx[part,step];
		posy[part] = mot00_posy[part,step];
	}
	if(mot00_ang[0,step+1]==-999){step_tmp = 0;motion=0;}
	else step_tmp+=1;
	break;
case 101:
	with(PileBunk){
		if(image_index == 0){sound_play(global.SndSe_3);image_index=1;}
	}
	for(part=0;part<=8;part+=1){
		angle[part] = mot00_ang[part,step];
		posx[part] = mot00_posx[part,step];
		posy[part] = mot00_posy[part,step];
	}
	if(mot00_ang[0,step+1]==-999){
		step_tmp = 0;
		motion=102;
	}else step_tmp+=0.2;
	break;
case 102:
	with(PileBunk){
		if(other.step_tmp mod 5==0 && image_index >= 15){
			inst = instance_create(x,y,objE102_Bullet_2);
			inst.speed = 25;
			inst.direction = image_angle-5+random(10);
		}
	}
	for(part=0;part<=8;part+=1){
		angle[part] = mot00_ang[part,step];
		posx[part] = mot00_posx[part,step];
		posy[part] = mot00_posy[part,step];
	}
	if(mot00_ang[0,step+1]==-999){
		step_tmp = 0;
		if(Percentage(50)) motion=102;
		else{
			motion = 0;
			with(PileBunk){image_index=0};
		}
	}else step_tmp+=1;
	break;
case 103:
	for(part=0;part<=8;part+=1){
		angle[part] = mot00_ang[part,step];
		posx[part] = mot00_posx[part,step];
		posy[part] = mot00_posy[part,step];
	}
	if(mot00_ang[0,step+1]==-999){
		step_tmp = 0;
		if(roll) motion=103;
		else motion = 0;
	}
	else step_tmp+=1;
	break;
}

posx[L_Hand1] = posx[Body]+lengthdir_x(160,angle[Body]+140);
posx[L_Leg1] = posx[Body]+lengthdir_x(160,angle[Body]+220);
posx[R_Hand1] = posx[Body]+lengthdir_x(160,angle[Body]+40);
posx[R_Leg1] = posx[Body]+lengthdir_x(160,angle[Body]+320);
posy[L_Hand1] = posy[Body]+lengthdir_y(160,angle[Body]+140);
posy[L_Leg1] = posy[Body]+lengthdir_y(160,angle[Body]+220);
posy[R_Hand1] = posy[Body]+lengthdir_y(160,angle[Body]+40);
posy[R_Leg1] = posy[Body]+lengthdir_y(160,angle[Body]+320);

posx[L_Hand2] = posx[L_Hand1]+lengthdir_x(200,angle[L_Hand1]);
posy[L_Hand2] = posy[L_Hand1]+lengthdir_y(200,angle[L_Hand1]);
posx[R_Hand2] = posx[R_Hand1]+lengthdir_x(200,angle[R_Hand1]);
posy[R_Hand2] = posy[R_Hand1]+lengthdir_y(200,angle[R_Hand1]);

posx[L_Leg2] = posx[L_Leg1]+lengthdir_x(200,angle[L_Leg1]);
posy[L_Leg2] = posy[L_Leg1]+lengthdir_y(200,angle[L_Leg1]);
posx[R_Leg2] = posx[R_Leg1]+lengthdir_x(200,angle[R_Leg1]);
posy[R_Leg2] = posy[R_Leg1]+lengthdir_y(200,angle[R_Leg1]);

/* */
if(!roll){
	with(Wire01){
		x=other.x-130;y=other.y+40;
		if(Percentage(0.2) && image_index==0 && !alarm[0]){
			alarm[0] = 40;
			sound_play(global.SndReload_1);
			with(objNormal){other.temp = point_direction(other.x,other.y,x,y)}
			image_angle=temp;
		}
	}
	with(Wire02){
		x=other.x+130;y=other.y+40;
		if(Percentage(0.2) && image_index==0 && !alarm[0]){
			alarm[0] = 40;
			sound_play(global.SndReload_1);
			with(objNormal){other.temp = point_direction(other.x,other.y,x,y)}
			image_angle=temp;
		}
	}
}

with(PileBunk){
	x=other.x;y=other.y-80;
	if(!other.roll){
		with(objNormal){other.image_angle = point_direction(other.x,other.y,x,y)}
	}
}

with(Laser){
	x=other.x;y=other.y+80;
	if(!other.roll){
		if(Percentage(1) && image_index==0) image_index=1;
	}
}

with(Arm01){
	x=other.x-80;y=other.y-80;
	if(!other.roll){
		//if(Percentage(1) && image_index==0) image_index=1;
	}
}

with(Arm02){
	x=other.x+80;y=other.y-80;
	if(!other.roll){
		//if(Percentage(1) && image_index==0) image_index=1;
	}
}

/* */
/*  */
