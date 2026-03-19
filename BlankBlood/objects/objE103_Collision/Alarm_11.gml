action_set_relative(0);
global.bind = -100;
{
action_set_relative(1);
score += point;
action_set_relative(0);
}
with(objE103_Origin){instance_destroy()};
with(objE103_Arms){instance_destroy()};
with(objE103_Arm01){instance_destroy()};
with(objE103_Arm02){instance_destroy()};
with(objE103_Arm03){instance_destroy()};
with(objE103_Arm04){instance_destroy()};
Flash(c_white,1,0.005);
sound_play(global.SndBoss[1]);
quake(30,30);
global.BossHP = HP;
action_kill_object();
action_set_relative(0);
