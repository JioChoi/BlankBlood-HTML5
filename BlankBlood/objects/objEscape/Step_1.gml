{
	Key_Control();
	air_checkBike();
	if(air){
		hspeed = hspeed*0.95;

		if(vspeed>0){
			gravity = global.g;
			gravity_direction = 270;
		}else{
			gravity = global.g;
			gravity_direction = 270;
		}
	}else{
		hspeed = hspeed*0.8;
		jump = true;
		gravity = 0;
		gravity_direction = 0;
	}
}
