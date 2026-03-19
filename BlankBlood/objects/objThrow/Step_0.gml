{
	air_checkChara();
	if(air){
		gravity = global.g*0.7;
		gravity_direction = 270;
	}else{
		if(vspeed==0) hspeed=16;
		gravity = 0;
		gravity_direction = 0;
	}

	if(flag){
		if(chara){
			if(image_index>16){
				image_index = 16;
				image_speed = 0;
			}
		}else{
			if(image_index>14){
				image_index = 14;
				image_speed = 0;
			}			
		}
	}else{
		if(image_index>2) image_index = 0;
	}
}
