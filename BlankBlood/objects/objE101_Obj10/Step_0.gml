if(image_index > 17){
	instance_destroy();
}

if(round(image_index)==7){
		col = collision_rectangle(x-32,y-150,x+32,y-280,objNormal,0,1);
		with(col){
			if(!inv && !global.retry && !global.bind){
				dmgkind = 21;
				deadkind = 10;
				pow = 10;
				direct = 270;
				global.HP[global.chara] -= random(5);
				sound_play(global.SndHit_08);

				step = 0;
				if(global.HP[global.chara]<=0) alarm[11] = 1;
				instance_change(objDamage,false);
			}
		}
}

