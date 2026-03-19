	air_check();
	gravity = 0;
	gravity_direction = 0;
	vspeed = vspeed * 0.8;
with(objNormal){
	var dis;
	dis = distance_to_object(other)
	other.NoticeZone = other.NearestDis<=dis && dis<=other.NoticeDis
	other.AtkZone = other.AtkPoint_1<=dis && dis<=other.AtkPoint_2
}
