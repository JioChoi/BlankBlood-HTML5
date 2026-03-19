action_set_relative(1);
image_yscale = 1.05+0.05*sin(step/18);

if(instance_number(objE06_Normal)<2){
	if(Percentage(0.5)) instance_create(x+40+random(600),y-16*5-49,objE101_Obj01);
}

if(collision_line(x+96,y-96,x+832-96,y-96,objNormal,0,1) && !instance_exists(objE101_Obj02) && !global.bind){
	with(objNormal){
		if(Percentage(2)) instance_create(x,other.y-16*5-97,objE101_Obj02);
	}
}
step += 1;
action_set_relative(0);
