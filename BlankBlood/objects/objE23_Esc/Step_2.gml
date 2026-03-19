{
	ang = 0;
	with(objNormal){
		if(x<other.x){
			other.dir = 1;
		}else if(x>other.x){
			other.dir = -1;
		}
		with(other){
			ang = point_direction(x,y,other.x,other.y);
		}
	}

	if(step<15){
		motion_set(random(180),15);
		if(step==14) motion_set(90,0);
	}else if(step>25){
		step = 0;
		image_index = 0;
		instance_change(objE23_Normal,false);
	}
	step+=1;
}
