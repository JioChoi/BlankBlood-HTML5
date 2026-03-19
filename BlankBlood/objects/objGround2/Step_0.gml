if(place_meeting(x,y,objNormal)){
	with(objNormal){
		y = 288 - (96 - (x-other.x));
		if(x-other.x<70) vspeed = -15-(2*left);
	}
}
