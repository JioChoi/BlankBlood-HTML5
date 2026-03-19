{
	with(objNormal){
		if(other.step==11){
			if(x<other.x){
				other.dir = 0;
				other.hspd = -60+random(5);
				other.vspeed = -4-random(2);
			}else if(x>other.x){
				other.dir = 1;
				other.hspd = 60+random(5);
				other.vspeed = -4-random(2);			
			}
		}
	}

	if(step>11){
		col = collision_rectangle(x,y,x+hspd*2,y+30,objNormal,0,1);
		with(col){
			if(!global.bind && !inv){
				global.bind = 100;
				bindkind = 4;
				deadkind = 22;
				cutkind = 0;
				global.HP[global.chara] -= random(5);
				sound_play(global.SndHit_08);

				step = 0;
				premouse_x = mouse_x;
				premouse_y = mouse_y;
				instance_change(objBind,false);
				with(other){bind = true;step = 0;instance_change(objE10_Bind_1,false)};
			}
		}
	}

	if(step>17 && !air) instance_change(objE10_Normal,false);
	step += 1;
}
