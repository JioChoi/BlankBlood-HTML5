{
	with(objNormal){
		if(other.NoticeZone){

		}
	}

	if(NoticeZone){

	}else{

	}

	if(AtkZone){
		if(Percentage(10)){
			col = collision_rectangle(x,y,x,y-30,objNormal,0,1);
			with(col){
				if(!global.bind && !inv){
					Particle(global.SprEffect_Particle[21],x,y,20,50,50,0.98,0,180,5,10,10,20,0.1,0.4,0.2);
					global.bind = 100;
					bindkind = 6;
					deadkind = 10;
					cutkind = 0;
					sound_play(global.SndHit_08);
					step = 0;
					premouse_x = mouse_x;
					premouse_y = mouse_y;
					instance_change(objBind,false);
					with(other){
						quake(10,15);
						bind = true;bindy = 0;
						image_index = 0;
						step = 0;
						instance_change(objE22_Bind_1,false)
					};
				}
			}
		}
	}
	mode = 0;
}
