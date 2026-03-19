if((!NoticeZone || !AtkZone)){
	if(dir && (place_free(x+run,y+1) || !place_free(x+run,y)) ) dir = !dir;
	else if(!dir && (place_free(x-run,y+1) || !place_free(x-run,y)) ) dir = !dir;
}
