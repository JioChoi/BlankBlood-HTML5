{
	if(place_free(x+2,y)) dir = 1;
	else dir = 0;

	if(AtkZone){
		step += 1;
		if(step > 60){
			step = 0;
			instance_change(objE13_Atk_1,false);
		}
	}
}
