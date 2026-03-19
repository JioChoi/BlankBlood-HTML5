var __b__;
__b__ = action_if_variable(bomb, 0, 0);
if __b__
{
{
Flash(c_white,1,0.05);
quake(30,20);
sound_play(global.SndHit_11);
effect_create_below(ef_smokeup,x+48,y+96,2,c_black);
Particle(sprDrumPart,x+48,y,50,30,30,0.98,0,90,5,20,30,20,0.2,0.4,1);
bomb = 1;

}
}
