if(image_index>3) image_index = 0;
if(image_index == 0){
	image_speed = 0;
	if(Percentage(1)) image_index = 1;
}else{
	image_speed = 1;
}

if(Percentage(0.1)) with(objNormal){instance_create(x-150+random(300),other.y,objE103_Yotyou2)}
if(Percentage(0.2)) instance_create(x-150+random(300),y,objE103_Yotyou)
if(Percentage(1)) attack = true;
if(attack){
	if(step mod 4 == 0){
		instance_create(x+step*10,y,objE103_Arm01);
		instance_create(x-step*10,y,objE103_Arm01);
	}
	step += 1;
	if(step>32){attack=false;step=0;}
}
