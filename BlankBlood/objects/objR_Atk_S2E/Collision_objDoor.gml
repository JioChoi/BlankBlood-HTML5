var __b__;
__b__ = action_if_variable(flag, 0, 0);
if __b__
{
{
with(other){
	Particle(sprDoor_P,x,y,5,5,5,0.98,0,360,3,10,10,20,0.3,0.3,1);
	quake(10,5);
	//sound_play(global.SndHit_11);
	sound_play(global.SndHit_14);
}
instance_destroy();
}
}
