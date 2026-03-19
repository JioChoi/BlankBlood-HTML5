if(image_index > 20){
	instance_destroy();
}

if(round(image_index)==10){
		col = collision_rectangle(x-64,y-30,x+64,y+90,objNormal,0,1);
		with(col){
		if(!global.bind && !global.retry){
			global.bind = 100;
			bindkind = 2;
			deadkind = 41;
			cutkind = 0;
			sound_play(global.SndHit_08);
			Particle(global.SprEffect_Particle[21],x,y,20,50,50,0.98,0,180,10,10,10,20,0.1,0.4,0.2);

			step = 0;
			premouse_x = mouse_x;
			premouse_y = mouse_y;
			instance_change(objBind,false);
			with(other){step=0;instance_change(objE101_Obj03,true)};
		}
	}
}
