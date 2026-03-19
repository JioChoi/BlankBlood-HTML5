action_set_relative(1);
action_effect(0, 0, 0, 2, 33023, 0);
action_effect(0, 0, 0, 1, 16777215, 0);
action_effect(5, 0, 0, 1, 0, 0);
{
action_set_relative(0);
step = 0;
action_set_relative(1);
}
{
action_set_relative(0);
image_index = 0;
action_set_relative(1);
}
{
action_set_relative(0);
image_alpha = 1;
action_set_relative(1);
}
quake(30,20);
Flash(c_red,0.8,0.05);
sound_play(global.SndHit_11);
sound_play(global.SndHit_17);
sound_play(global.VicDmg_55[0]);
sound_play(global.VicDmg_55[1]);
Particle(global.SprEffect_Particle[20],x,y,150,30,30,0.98,70,80,5,20,30,20,0.1,0.4,1);

inst = instance_create(x,y,objThrow);
inst.chara = 0;
inst.hspeed = -random(4);
inst.vspeed = -10-random(5);

inst = instance_create(x,y,objThrow);
inst.chara = 1;
inst.hspeed = -4-random(4);
inst.vspeed = -10-random(5);
action_change_object(objEscFailed, 0);
action_set_relative(0);
