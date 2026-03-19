if(collision_rectangle(x,y,x+32,y+96,objNormal,0,1)){
	with(objNormal){
		if(!inv && !other.bomb){
			effect_create_above(ef_explosion,x,y,2,c_maroon);
			effect_create_above(ef_explosion,x,y,1,c_black);
			quake(30,20);
			Flash(c_red,0.8,0.05);
			sound_play(global.SndHit_11);
			sound_play(global.SndHit_17);
			global.HP[0] -= other.value;
			if(global.HP[0]<0) alarm[11] = 1;
			inv = 1;
			alarm[1] = 60;
		}
	}
	alarm[11] = 1;
}
if(bomb){
	effect_create_below(ef_smokeup,x+24,y+96,1,c_black)
}

var amt;
amt = 0;
with(objE103_Last){ amt = amount };
if(x>800-amt || global.distance < 50 && !alarm[1]){
	if(!bomb){
		with(objE103_Last){ amount -= 150 }
		alarm[11] = 1;
	}
	alarm[1] = 2;
}

