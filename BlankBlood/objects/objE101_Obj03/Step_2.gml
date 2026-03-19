{
	if(step>=80){
		//global.bind = 100;
		if(step==80){
			global.bind = 100;
			sound_play(global.SndHit_19);
			fl = Flash(c_black,0,-0.1);
			instance_create(x,y,objE101_Obj04);
			instance_create(320,1280,objE101_Part_6);
			instance_create(160,1696,objE101_Part_7);
			instance_create(130,1696,objE101_Part_7);
			instance_create(190,1696,objE101_Part_7);
		}

		with(fl){
			if(floor(alpha)==1){
				with(objNormal){x=480;y=1408;}
				with(objE101_Part_5){step = 1};
			}
			if(alpha>2){
				global.bind = -100;
				minus=0.1;
			}
		}
	}else{
		with(objNormal){
			x = other.x;
			y = other.y+32;
			if(Percentage(5)){
				image_index = 0;
				Particle(global.SprEffect_Particle[21],x,y,3,50,50,0.98,0,180,5,10,10,20,0.1,0.4,0.2);
			}
		}

		if(!global.bind){
			inst = instance_create(x,y,objE101_Obj02);
			inst.image_index = 16;
			instance_destroy();
		}else {
			global.bind += 2;
			if(global.bind>100) global.bind = 100;
		}
	}
	step += 1;
}
