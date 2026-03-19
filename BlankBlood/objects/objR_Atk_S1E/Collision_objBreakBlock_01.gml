var __b__;
__b__ = action_if_variable(flag, 0, 0);
if __b__
{
{
with(other){
	HP -= 30+random(10);
	if(HP<=0) alarm[11] = 1;
	sound_play(global.SndHit_00);
	sound_atk(kind);
}
}
}
