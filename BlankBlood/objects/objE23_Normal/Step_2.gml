{
	with(objNormal){
		if(other.NoticeZone){
			if(x<other.x){
				other.dir = 1;
			}else if(x>other.x){
				other.dir = -1;
			}

			if(!collision_line(x,y,other.x,other.y,objBlock,0,1)){
				other.move = 1;
				with(other){
					motion_add(point_direction(x,y,other.x,other.y)+random(20),15);
					if(speed>8) speed=8;
				};
			};
		}
	}

	if(AtkZone){
		//image_blend = c_blue;
		if(Percentage(5)){
			step = 0;image_index=0;
			instance_change(objE23_Esc,false);
		}

		with(objNormal){
			if(!inv && other.y<y){
				with(other){
					step = 0;image_index=0;
					if(Percentage(30) && !global.fdown) instance_change(objE23_Atk_1,false);
					else instance_change(objE23_Atk_2,false);
				}
			}
		}
	}
}
