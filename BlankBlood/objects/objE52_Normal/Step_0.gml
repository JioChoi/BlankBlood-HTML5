with(objNormal){
	var dis;
	dis = distance_to_object(other)
	other.NoticeZone = other.NearestDis<=dis && dis<=other.NoticeDis
	other.AtkZone = other.AtkPoint_1<=dis && dis<=other.AtkPoint_2
}
