{
	with(objNormal){
		if(other.step == 0){
			if(!global.bind){
				if(other.dir) x = other.x+113;
				else  x = other.x-113;
				y = other.y;
			}
		}
	}

	if(step == 0){
		if(global.bind) global.bind = global.bind + 10;
		else global.bind = 10;
	}

	if(image_index>3){
		image_speed = 0;
		if(Percentage(7)) image_index = 0;
	}else image_speed = 0.5;

	if(!global.bind){bind = false;instance_change(objE07_Normal,false);}
	else {
		global.bind += 1;
		if(global.bind>100) global.bind = 100;
	}


	step += 1;
}
