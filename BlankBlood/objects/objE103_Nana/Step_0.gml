action_inherited();
with(objNormal){
	other.dis = distance_to_object(other);
	if(x>other.x) other.pos = 1;
	else other.pos = 0;

	other.gun_dir = point_direction(other.x,other.y,x,y);
}
