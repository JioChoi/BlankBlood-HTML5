{
	if(Percentage(10)){
		col = collision_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),objNormal,0,1);
		with(col){
			if(!inv && global.HP[global.chara]>=0){
				dmgkind = 11;
				deadkind = 10;
				pow = 0;
				direct = 0;
				global.HP[global.chara] -= random(0.5);

				if(global.HP[global.chara]<=0){
					step = 0;
					inv = 1;
					alarm[11] = 1;
				}else{
					if(Percentage(50)){
						quake(20,5);
						Flash(c_red,0.1,0.03);
					}
				}
			}
		}
	}
}
