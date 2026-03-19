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

	switch (kind)
	{
	case 1:
		if(step==0){
			inc = 30+random(10);
			speed = 7+random(5);			
			with(objNormal){
				if(dir) other.direction = 100+random(50);
				else other.direction = 80-random(50);
			}
		}
		else dir += inc;
		break;
	case 2:
		if(step==0){
			inc = random(5);
  			speed = 0;
			direction = 268+random(4);
		}
		else dir += inc;
		break;
	case 3:
		if(step==0){
			inc = 30+random(10);
			speed = 7+random(5);			
			with(objNormal){
				if(dir) other.direction = 100+random(50);
				else other.direction = 80-random(50);
			}
		}
		else dir += inc;
		break;
	case 4:
		if(step==0){
			inc = 30+random(10);
			speed = random(5);			
			with(objNormal){
				if(dir) other.direction = 100+random(50);
				else other.direction = 80-random(50);
			}
		}
		else dir += inc;
		break;
  	default: break;
	}
}
step += 1;
action_set_relative(0);
