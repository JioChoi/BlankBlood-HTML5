if(!flag){flag = collision_rectangle(x,y,x+32,y-32,objNormal,0,1);}
if(flag){
	if(flag!=12345){sound_play(global.SndSwitch_1);sound_play(global.SndSwitch_2);}
	flag = 12345;

	if(Percentage(10)){
		col = collision_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),objNormal,0,1);
		with(col){
			if(!inv && global.HP[global.chara]>=0){
				dmgkind = 11;
				deadkind = 10;
				pow = 0;
				direct = 0;
				global.HP[global.chara] -= random(5);

				if(global.HP[global.chara]<=0){
					step = 0;
					inv = 1;
					alarm[11] = 1;
				}else{
					if(Percentage(50)){
						quake(20,5);
						Flash(c_red,0.2,0.05);
					}
				}
			}
		}
	}
}
