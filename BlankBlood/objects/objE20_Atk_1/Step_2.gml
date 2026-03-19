{
	with(objNormal){
		if(other.step==5){
			if(x<other.x){
				other.dir = 0;
				other.hspd = -20+random(5);
				other.vspeed = -8-random(2);
			}else if(x>other.x){
				other.dir = 1;
				other.hspd = 20+random(5);
				other.vspeed = -8-random(2);			
			}
		}
	}

	if(step>11){
		col = collision_rectangle(x,y,x+hspd*2,y+30,objNormal,0,1);
		with(col){
			if(!global.fdown && !global.bind && !inv){
				global.bind = 100;
				bindkind = 5;
				deadkind = 10;
				cutkind = 0;
				Particle(global.SprEffect_Particle[21],x,y,30,50,50,0.98,180,180,5,10,10,20,0.1,0.4,0.2);
				global.HP[global.chara] -= random(5);
				sound_play(global.SndHit_08);

				step = 0;
				premouse_x = mouse_x;
				premouse_y = mouse_y;
				instance_change(objBind,false);
				with(other){
					bind = true;step = 0;
					instance_change(objE20_Bind_1,false);
				}
			}
		}
	}

	if(step>17 && !air) instance_change(objE20_Normal,false);
	step += 1;
}
