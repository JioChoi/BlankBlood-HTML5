{
	if(step<=4){
		col = collision_rectangle(x-32,y,x+32,y+30,objNormal,0,1);
		with(col){
			var chk;
			if(global.chara) chk = (up==2);
			else chk = (up==2 || b2==2);
			if(chk){
				effect_create_below(ef_ellipse,x,y+48,0,33023);
				effect_create_below(ef_ellipse,x,y+48,0,c_white);
				effect_create_below(ef_ellipse,x,y+48,0,c_white);
				vspeed = -30;
			}
		}

		if(step == 4){
			use = false;
			alarm[0] = 120;
			col = collision_rectangle(x-32,y,x+32,y+30,objNormal,0,1);
			with(col){
				if(!inv){
					dmgkind = 22;
					deadkind = 0;
					pow = 50;
					if(other.dir) direct = 10;
					else direct = rev_angle(10);

					cutkind = 0;
					sound_play(global.SndHit_04);

					step = 0;
					instance_change(objDamage,false);
				}
			}
		}
	}

	if(step>28){
		if(dir) instance_change(objE51_Normal_R,false);
		else instance_change(objE51_Normal_L,false);
	}
	step += 1;
}
