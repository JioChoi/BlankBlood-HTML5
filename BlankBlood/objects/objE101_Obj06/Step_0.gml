if(image_index > 13){
	instance_destroy();
}

if(round(image_index)==4){
		col = collision_line(x,y,x,y-330,objNormal,0,1);
		with(col){
			if(!inv && !global.retry){
				dmgkind = 21;
				deadkind = 10;
				pow = 20;
				direct = 100;
				global.HP[global.chara] -= 15+random(10);
				sound_play(global.SndHit_10);

				step = 0;
				if(global.HP[global.chara]<=0) alarm[11] = 1;
				instance_change(objDamage,false);
			}
		}
}
