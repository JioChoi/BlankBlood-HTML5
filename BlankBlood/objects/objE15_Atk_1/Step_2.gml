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

	if(step==7){
		sound_play(global.SndShot_1);
		if(dir){
			var inst;
			inst = instance_create(x+40,y-5,objE15_Bullet_1);
			inst.hspd = 10;
			inst.vspeed = -10;
			hspd = -10;
		}else{
			var inst;
			inst = instance_create(x-40,y-5,objE15_Bullet_1);
			inst.hspd = -10;
			inst.vspeed = -10;
			hspd = 10;
		}
	}

	if(step>23 && !air) instance_change(objE15_Normal,false);
	step += 1;
}
