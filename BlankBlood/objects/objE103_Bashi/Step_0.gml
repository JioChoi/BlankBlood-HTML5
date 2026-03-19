if(image_index == 5){
	if(collision_line(x,y,x-210,y,objNormal,1,1)){
		with(objNormal){
			if(!inv){
				quake(30,20);
				Flash(c_red,0.3,0.05);
				sound_play(global.SndHit_11);
				sound_play(global.SndHit_17);
				global.HP[0] -= 20;
				if(global.HP[0]<0) alarm[11] = 1;
				inv = 1;
				alarm[1] = 60;
			}
		}
	}
}
if(image_index > 9) instance_destroy();

