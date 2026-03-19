{
	air_check();
	if(air){
		rot = 20;
		gravity = global.g*0.2;
		gravity_direction = 270;
	}else{
		rot = 0;
		gravity = 0;
		gravity_direction = 0;
	}
}
var __b__;
__b__ = action_if_variable(y, 312, 2);
if __b__
{
action_kill_object();
}
