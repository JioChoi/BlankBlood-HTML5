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

	if(!dir){
		if( place_free(x-walk,y) ) x -= run;
		move = true;
	}else{
		if( place_free(x+walk,y) ) x += run;
		move = true;
	}

	if(AtkZone){
		col = collision_rectangle(x,y+40,x+hspd*2,y+48,objNormal,0,1);
		if(col){
			bind = true;
			with(col){
				if(!global.bind && !inv){
					global.bind = 100;
					bindkind = 1;
					deadkind = 31;
					cutkind = 0;

					global.HP[global.chara] -= random(5);
					sound_play(global.SndHit_05);
	
					step = 0;
					premouse_x = mouse_x;
					premouse_y = mouse_y;
					instance_change(objBind,false);
					with(other){instance_change(objE04_Bind_1,false)};
				}
			}
		}
	}

	if(step>30) instance_change(objE04_Normal,false);
}
