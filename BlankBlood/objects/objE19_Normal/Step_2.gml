{
	with(objNormal){
		if(other.NoticeZone){
			if(x<other.x){
				other.dir = 0;
			}else if(x>other.x){
				other.dir = 1;
			}
		}
	}

	if(NoticeZone){
		if(!dir){
			if( place_free(x-walk,y) ) x -= run;
			move = true;
		}else{
			if( place_free(x+walk,y) ) x += run;
			move = true;
		}
	}else{
		if(!dir){
			if( place_free(x-walk,y) ) x -= walk;
			move = true;
		}else{
			if( place_free(x+walk,y) ) x += walk;
			move = true;
		}
	}

	col = collision_rectangle(x-10,y,x+10,y+2,objNormal,0,1);
		with(col){
			if(!inv && !global.bind){
				dmgkind = 11;
				deadkind = 10;
				downkind = 10;
				pow = 8;
				if(other.dir) direct = 10;
				else direct = rev_angle(10);
				Particle(global.SprEffect_Particle[21],x,y,10,50,50,0.98,0,180,5,10,10,20,0.1,0.4,0.2);
				global.HP[global.chara] -= 5+random(10);
				sound_play(global.SndHit_02);

				step = 0;
				inv = 1;
				global.bind = -100;
				global.fdown = 300;
				image_alpha = 1;
				dashKey = 0;
				dash = false;
				crouch = false;
				cutkind = 0;
				speed = pow;
				direction = direct;

				if(global.HP[global.chara]<=0) alarm[11] = 1;
				instance_change(objDown,false);

				if(Percentage(40)) sound_play(global.SndHit_23);
				else if(Percentage(40)) sound_play(global.SndHit_24);
				else{sound_play(global.SndHit_23);sound_play(global.SndHit_24);}
				quake(30,30);
				Flash(c_white,0.8,0.05);
				voice_play(VicElectricDmg(0));
			}
		}

		col = collision_rectangle(x-2,y+10,x+2,y+32,objNormal,0,1);
		with(col){
			if(!global.bind && !inv){
				global.bind = 100;
				bindkind = 5;
				deadkind = 10;
				cutkind = 0;
				global.fdown = -100;
				Particle(global.SprEffect_Particle[21],x,y,30,50,50,0.98,180,180,5,10,10,20,0.1,0.4,0.2);
				global.HP[global.chara] -= random(5);
				sound_play(global.SndHit_08);

				step = 0;
				premouse_x = mouse_x;
				premouse_y = mouse_y;
				instance_change(objBind,false);
				with(other){
					bind = true;
					step = 0;
					if(!air) vspeed -= 10;
					instance_change(objE19_Bind_1,false);
				}
			}
		}
}

