if(place_meeting(x+20,y,objNormal)){
	with(objNormal){
		effect_create_above(ef_explosion,x,y,2,c_maroon);
		effect_create_above(ef_explosion,x,y,1,c_black);
		quake(30,20);
		Flash(c_red,0.8,0.05);
		sound_play(global.SndHit_11);
		sound_play(global.SndHit_17);
		global.HP[0] -= 30;
		if(global.HP[0]<0) alarm[11] = 1;
		inv = 1;
		alarm[1] = 60;
	}
}

with(collision_rectangle(x,y,x+64,y-128,objE103_Nyuru,1,0)){
	hspeed = 16;
}

