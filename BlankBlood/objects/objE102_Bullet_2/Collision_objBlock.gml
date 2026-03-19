var __b__;
__b__ = action_if_variable(flag, 0, 0);
if __b__
{
depth = 1000000;
sound_play(global.SndHit_18);
Particle(global.SprEffect_Particle[0],x,y,speed/3,50,50,0.98,0,360,5,10,10,20,0.2,0.5,1);
}
action_move_contact(direction, -1, 0);
flag = 1;
__b__ = action_if_variable(d_flag, 1, 0);
if __b__
{
quake(20,20);
voice_play(VicNormalDmg(1));
sound_play(global.SndHit_10);
sound_play(global.SndHit_07);
Flash(c_red,0.4,0.02);
}
