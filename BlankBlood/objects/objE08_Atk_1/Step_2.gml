{
	with(objNormal){
		if(other.NoticeZone){
			if(x<other.x){
				other.dir = 0;
			}else if(x>other.x){
				other.dir = 1;
			}

			if(!collision_line(x,y,other.x,other.y,objBlock,0,1)){
				other.move = 1;
				other.speed = other.run;
				other.direction = point_direction(other.x,other.y,x,y)
			};
		}
	}

	if(step==17){
		col = collision_circle(x,y,64,objNormal,0,1);
		with(col){
			if(!inv){
				if(global.HP[global.chara]/global.HPMAX[global.chara] < 0.66){
					dmgkind = 22;
					deadkind = 0;
					pow = 40;
					if(other.dir) direct = 10;
					else direct = rev_angle(10);
				}else{
					dmgkind = 21;
					deadkind = 10;
					pow = 30;
					if(other.dir) direct = 0;
					else direct = rev_angle(0);
				}
				cutkind = 0;

				global.HP[global.chara] -= 20+random(5);
				sound_play(global.SndHit_04);

				step = 0;
				if(global.HP[global.chara]<=0) alarm[11] = 1;
				instance_change(objDamage,false);
			}
		}
		alarm[11] = 1;
	}
	step += 1;
}

