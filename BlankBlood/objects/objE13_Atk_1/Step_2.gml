{
	if(step>40 && step mod 3 == 0){
		if(view_xview-100<x && view_xview+view_wview+100>x && view_yview-100<y && view_yview+view_hview+100>y) sound_play(global.SndShot_1);
		if(dir){
			var inst;
			inst = instance_create(x+50,y-2+random(4),objE13_Bullet_1);
			inst.hspd = 40+random(2);
			inst.vspeed = -2+random(4);
			hspd = 0;
		}else{
			var inst;
			inst = instance_create(x-50,y-2+random(4),objE13_Bullet_1);
			inst.hspd = -40+random(2);
			inst.vspeed = -2+random(4);
			hspd = 0;
		}
	}

	if(step>120){
		step = 0;
		instance_change(objE13_Normal,false);
	}
	step += 1;
}
