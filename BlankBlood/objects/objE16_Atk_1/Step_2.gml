{
	if(step==0){use = false;alarm[0] = 40+random(40);}
	if(step==8){
		col = collision_rectangle(x-20,y,x+20,y+70,objNormal,0,1);
		with(col){
			if(!global.bind && !inv){
				global.bind = 100;
				bindkind = 2;
				deadkind = 61;
				cutkind = 0;
				Particle(global.SprEffect_Particle[20],x,y,10,50,50,0.98,0,180,0,3,10,20,0.1,0.9,0.4);
				global.HP[global.chara] -= random(5);
				sound_play(global.SndHit_08);
				step = 0;
				premouse_x = mouse_x;
				premouse_y = mouse_y;
				instance_change(objBind,false);
				with(other){bind = true;instance_change(objE16_Bind_1,false)};
			}
		}
	}

	if(step>13) instance_change(objE16_Normal,false);
	step += 1;
}
