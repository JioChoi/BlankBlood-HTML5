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

	if( 25<step&&step<30){
		if(dir) col = collision_rectangle(x+116,y-5,x+110,y-30,objNormal,0,1);
		else col = collision_rectangle(x-116,y-5,x-110,y-30,objNormal,0,1);

		with(col){
			if(!inv){
				sound_play(global.SndHit_08);
				
				if(!global.bind){
					bindkind = 1;
					deadkind = 41;
					cutkind = 0;
					bind = true;
					step = 0;
     					premouse_x = mouse_x;
					premouse_y = mouse_y;
					instance_change(objBind,false);
				}
				with(other){step = 0;instance_change(objE07_Bind_1,false)};
			}
		}
	}


	if(step>58 && !air) instance_change(objE07_Normal,false);
	step += 1;
}
