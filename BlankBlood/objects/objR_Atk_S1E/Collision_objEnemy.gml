var __b__;
__b__ = action_if_variable(flag, 0, 0);
if __b__
{
{
__b__ = action_if_variable(place_meeting(x,y,objDoor), 0, 0);
if __b__
{
with(other){
	hspd = (-300+600*other.dir)/weight;
	HP -= 150+random(50);
	if(HP<=0) alarm[11] = 1;
	sound_play(global.SndHit_00);
	sound_atk(kind);
	global.assist = id;
}

}
}
}
