if(!place_free(x,y+vspeed)){
	if(vspeed) move_contact_solid(270,abs(vspeed));
	else move_contact_solid(90,abs(vspeed));
	if(abs(vspeed)<3) vspeed = 0;
	else{vspeed = vspeed*-0.3;hspeed += 1;}
	flag = true;
}
if(!place_free(x+hspeed,y)){
	if(hspeed) move_contact_solid(0,abs(hspeed));
	else move_contact_solid(180,abs(hspeed));
	hspeed = 16;
}
