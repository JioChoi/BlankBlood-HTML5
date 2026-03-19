{
	var col,col2,col3;
	col = collision_rectangle(x-96,y-(High-current),x+96,y-5-High,objCharaSet,0,1);
	col2 = collision_rectangle(x-96,y-10-(High-current),x-80,y-10-High,objCharaSet,0,1);
	col3 = collision_rectangle(x+96,y-10-(High-current),x+80,y-10-High,objCharaSet,0,1);
	with(col){
		x = xprevious;y = yprevious;
		if(place_free(x,y+other.spd)) y += other.spd;
		vspeed = other.spd+1;
	}
	with(col2){
		x = xprevious;y = yprevious;
		hspeed = -15;
	}
	with(col3){
		x = xprevious;y = yprevious;
		hspeed = 15;
	}

	if(AtkZone){
		step = 0;
		if(current < High-8){
			if(current == 0) sound_play(global.SndSwitch_1);
			current += spd;
			quake(3,3);
		}else{
			with(col){
				dmgkind = 11;
				deadkind = 21;
				bindkind = 4;
				cutkind = true;
				pow = 0;
				global.HP[global.chara] -= random(2);
				step = 0;
				alarm[11] = 1;
				with(other){
					step=0;
					image_index = 0;
					voice_play(VicNormalDmg(2));
					instance_change(objE53_Finish_1,false);
				}
			}
		}
		//if(use){sound_play(global.SndSwitch_1);instance_change(objE51_Atk_1,false);}
	}else{
		if(current > 0) current -= 2;
	}
}
