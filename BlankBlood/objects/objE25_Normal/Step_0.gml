action_inherited();
with(objNormal){
	var dis;
	dis = distance_to_object(other);
	other.c_dst = dis;
	other.c_dir = point_direction(other.x,other.y,x,y);
	other.NoticeZone = other.NearestDis<=dis && dis<=other.NoticeDis
	other.AtkZone = other.AtkPoint_1<=dis && dis<=other.AtkPoint_2
}
