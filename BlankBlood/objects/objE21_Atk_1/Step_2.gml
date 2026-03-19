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

	if(step==2){
		if(dir) hspd = 10;
		else hspd = -10;
	}

	if(step==8){
		if(dir) col = collision_rectangle(x,y,x+32,y+30,objNormal,0,1);
		else col = collision_rectangle(x,y,x-32,y+30,objNormal,0,1);

		with(col){
			if(!global.bind && !inv){
				global.bind = 100;
				bindkind = 1;
				deadkind = 31;
				cutkind = 0;

				global.HP[global.chara] -= random(5);
				sound_play(global.SndHit_05);
	
				step = 0;
				premouse_x = mouse_x;
				premouse_y = mouse_y;
				instance_change(objBind,false);
				with(other){bind = true;instance_change(objE21_Bind_1,false)};
			}
		}
	}

	if(step>25 && !air) instance_change(objE21_Normal,false);
	step += 1;
}
