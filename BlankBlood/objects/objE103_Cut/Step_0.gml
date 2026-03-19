action_set_relative(1);
{
	air_check();
	if(air){
		gravity = global.g;
		gravity_direction = 270;
	}else{
		gravity = 0;
		gravity_direction = 0;
	}

	switch (cutkind)
	{
	case 1:
		if(step==0){
			speed = 7+random(5);
			direction = 45+random(90);
		}
		if(!place_free(x,y+5)) hspeed = hspeed*0.5;
		else angle += 22;
		break;
	case 2:
		if(step==0){
			speed = 3+random(3);
			direction = 45+random(90);
		}
		if(!place_free(x,y+5)){ hspeed = hspeed*0.2;angle=90; }
		else angle += 12;
		break;
	default: break;
	}
}


step += 1;
action_set_relative(0);
