{
	with(objNormal){
		if(other.step==0){
			if(x<other.x){
				other.dir = 0;
			}else if(x>other.x){
				other.dir = 1;		
			}
		}
	}

	if(step>5){
		sound_play(global.SndShot_2);
		if(dir){
			var inst;
			inst = instance_create(x+40,y+24,objE17_Bullet_1);
			inst.hspd = 5+random(8);
			inst.vspeed = 2;
			hspd = -1;
			inst = instance_create(x+40,y+24,objE17_Bullet_1);
			inst.hspd = 5+random(8);
			inst.vspeed = 0;
			hspd = -1;
		}else{
			var inst;
			inst = instance_create(x-40,y+24,objE17_Bullet_1);
			inst.hspd = -5-random(8);
			inst.vspeed = 0;
			hspd = 1;
			inst = instance_create(x-40,y+24,objE17_Bullet_1);
			inst.hspd = -5-random(8);
			inst.vspeed = 2;
			hspd = 1;
		}
	}

	if(step>23 && !air) instance_change(objE17_Normal,false);
	step += 1;
}
