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

	if(step==0){
		inc = 30+random(10);
		speed = 7+random(5);			
		direction = 80+random(50);
	}else{
		dir += inc;
		x+=16;
	}
}
step += 1;
action_set_relative(0);
