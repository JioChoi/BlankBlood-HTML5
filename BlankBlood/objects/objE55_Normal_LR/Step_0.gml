if(place_meeting(x,y,objNormal) && flag==0) flag = 1;
if(kind == 0){
	if(flag==1){
		if(collision_rectangle(x+32+1,y,x+32+32,y+96,objNormal,0,1)&& !place_meeting(x,y,objNormal)){
			instance_create(x,y,objBlock);
			instance_create(x,y+32,objBlock);
			instance_create(x,y+64,objBlock);
			image_speed = 1;
			flag = 2;
		}
	}
}else{
	if(flag==1){
		if(collision_rectangle(x-1,y,x-32,y+96,objNormal,0,1)&& !place_meeting(x,y,objNormal)){
			instance_create(x,y,objBlock);
			instance_create(x,y+32,objBlock);
			instance_create(x,y+64,objBlock);
			image_speed = 1;
			flag = 2;
		}
	}
}

if(image_index==6){
	quake(20,10);
	sound_play(global.SndHit_11);
	image_speed = 0;
	image_index = 7;
}
