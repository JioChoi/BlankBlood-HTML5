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

	if(step==11){
		sound_play(global.SndShot_1);
		if(dir){
			var inst;
			inst = instance_create(x+32,y+3,objE05_Bullet_1);
			inst.hspd = 10;
			hspd = -10;
		}else{
			var inst;
			inst = instance_create(x-32,y+3,objE05_Bullet_1);
			inst.hspd = -10;
			hspd = 10;
		}
	}

	if(step>25 && !air) instance_change(objE05_Normal,false);
	step += 1;
}
