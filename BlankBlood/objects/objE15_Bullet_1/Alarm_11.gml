action_set_relative(1);
action_effect(0, 0, 0, 1, 0, 0);
action_effect(0, 0, 0, 1, 33023, 0);
	with(objNormal){
		if(x<other.x){
			other.dir = 0;
		}else if(x>other.x){
			other.dir = 1;
		}
	}
	sound_play(global.SndHit_11);
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

action_kill_object();
action_set_relative(0);
