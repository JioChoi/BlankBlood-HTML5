	air_check();
	if(air){
		gravity = global.g;
		gravity_direction = 270;
	}else{
		gravity = 0;
		gravity_direction = 0;
	}
if(image_index<4) image_speed = 0.5;
else{
image_speed = 0;
if(Percentage(1)){
	if(global.chara) image_index = 2;
	else image_index = 1;
}
}

	col = collision_rectangle(x,y,x+32,y-96,objNormal,0,1);
	with(col){
		with(other){
			if(!flag){
				global.help = true;
				instance_create(x,y,objHelper);
				instance_destroy();
			}
		}
	}
