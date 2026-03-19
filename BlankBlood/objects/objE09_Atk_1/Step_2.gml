{
	with(objNormal){
		if(other.step==0){

		}
	}

	if(step==10){
		if(dir) col = collision_rectangle(x,y,x+32,y+30,objNormal,0,1);
		else col = collision_rectangle(x,y,x-32,y+30,objNormal,0,1);

		with(col){
			if(!global.bind && !inv){
				Particle(global.SprEffect_Particle[21],x,y,20,50,50,0.98,0,180,5,10,10,20,0.1,0.4,0.2);
				global.bind = 100;
				bindkind = 2;
				deadkind = 41;
				cutkind = 0;
				sound_play(global.SndHit_08);
				step = 0;
				premouse_x = mouse_x;
				premouse_y = mouse_y;
				instance_change(objBind,false);
				with(other){bind = true;instance_change(objE09_Bind_1,false)};
			}
		}
	}

	if(step>25 && !air) instance_change(objE09_Normal,false);
	step += 1;
}
