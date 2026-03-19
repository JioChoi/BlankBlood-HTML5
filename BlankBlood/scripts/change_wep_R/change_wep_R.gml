function change_wep_R() {
	if(!global.chara){
		if(down){
			sound_play(global.SndDecide);
			Flash(c_yellow,0.25,0.01);
			if(global.gun_kind == 0){
				if(global.item_flag[12]){
					inst = instance_create(x,y,objWeaponDisp);
					inst.kind = 12;
					global.gun_kind = 1;
				}else if(global.item_flag[33]){
					inst = instance_create(x,y,objWeaponDisp);
					inst.kind = 33;
					global.gun_kind = 2;
				}else if(global.item_flag[34]){
					inst = instance_create(x,y,objWeaponDisp);
					inst.kind = 34;
					global.gun_kind = 3;
				}
			}else if(global.gun_kind == 1){
				if(global.item_flag[33]){
					inst = instance_create(x,y,objWeaponDisp);
					inst.kind = 33;
					global.gun_kind = 2;
				}else if(global.item_flag[34]){
					inst = instance_create(x,y,objWeaponDisp);
					inst.kind = 34;
					global.gun_kind = 3;
				}else global.gun_kind = 0;
			}else if(global.gun_kind == 2){
				if(global.item_flag[34]){
					inst = instance_create(x,y,objWeaponDisp);
					inst.kind = 34;
					global.gun_kind = 3;
				}else global.gun_kind = 0;
			}else global.gun_kind = 0;
		}
	}



}
