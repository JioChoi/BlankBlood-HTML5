{
	flag = 1;
	x = -16;
	y = 416-96;
	if(collision_rectangle(x-32,0,x+32,room_height,objGround0,0,1)){y = 416-96-128;hspeed = 16;}
	else if(collision_rectangle(x-32,0,x+32,room_height,objGround1,0,1)) alarm[0] = 4;
	else if(collision_rectangle(x-32,0,x+32,room_height,objGround2,0,1)) alarm[0] = 4;
	else hspeed = 16;
}

