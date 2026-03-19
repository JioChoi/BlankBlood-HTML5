{
	with(objNormal){
		if(other.step==0){
			if(x<other.x){
				other.dir = 0;
			}else if(x>other.x){
				other.dir = 1;		
			}
		}
	}

	if(step==10){
		if(dir) hspd = 10;
		else hspd = -10;
	}

	if(step==17){
		if(dir) col = collision_rectangle(x,y,x+32,y+30,objNormal,0,1);
		else col = collision_rectangle(x,y,x-32,y+30,objNormal,0,1);

		with(col){
			if(!global.bind && !inv){
				global.bind = 100;
				bindkind = 2;
				deadkind = 41;
				cutkind = 0;
				Particle(global.SprEffect_Particle[21],x,y,30,50,50,0.98,180,180,5,10,10,20,0.1,0.4,0.2);
				global.HP[global.chara] -= random(5);
				sound_play(global.SndHit_08);
				step = 0;
				premouse_x = mouse_x;
				premouse_y = mouse_y;
				instance_change(objBind,false);
				with(other){bind = true;instance_change(objE06_Bind_1,false)};
			}
		}
	}

	if(step>25 && !air) instance_change(objE06_Normal,false);
	step += 1;
}
