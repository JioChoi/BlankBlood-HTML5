{
	with(objNormal){
		if(other.NoticeZone){
			if(x<other.x){
				other.dir = 0;
			}else if(x>other.x){
				other.dir = 1;
			}

			if(!collision_line(x,y,other.x,other.y,objBlock,0,1)){
				other.move = 1;
				other.speed = other.run;
				other.direction = point_direction(other.x,other.y,x,y)
			};
		}
	}

	if(AtkZone){
		with(objNormal){
			if(!inv){
				with(other){
					step = 0;
					instance_change(objE08_Atk_1,false);
				}
			}
		}
	}
}
