	air_check();
	if(air){
		gravity = global.g*0.3;
		gravity_direction = 270;
	}else{
		gravity = 0;
		gravity_direction = 0;
		if(Percentage(2)) {vspeed = -2;image_index = 6};
	}
with(objNormal){
	var dis;
	dis = distance_to_object(other)
	other.NoticeZone = other.NearestDis<=dis && dis<=other.NoticeDis
	other.AtkZone = other.AtkPoint_1<=dis && dis<=other.AtkPoint_2
}
