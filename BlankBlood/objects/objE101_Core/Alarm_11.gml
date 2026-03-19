action_set_relative(0);
global.bind = -100;
{
action_set_relative(1);
action_effect(0, 0, 0, 1, 255, 0);
action_set_relative(0);
}
sound_play(global.SndHit_10);
{
action_set_relative(1);
score += point;
action_set_relative(0);
}
with(objE101_Normal){instance_destroy()};
with(objE101_Part_0){instance_destroy()};
with(objE101_Part_1){instance_destroy()};
with(objE101_Part_2){instance_destroy()};
with(objE101_Part_3){instance_destroy()};
with(objE101_Part_4){instance_destroy()};
with(objE101_Part_5){instance_destroy()};
with(objE101_Part_6){instance_destroy()};
with(objE101_Part_7){instance_destroy()};
with(objE101_Part_8){instance_destroy()};
with(objE101_Obj01){instance_destroy()};
with(objE101_Obj02){instance_destroy()};
with(objE101_Obj03){instance_destroy()};
with(objE101_Obj04){instance_destroy()};
with(objE101_Obj06){instance_destroy()};
with(objE101_Obj07){instance_destroy()};

with(objBossBlock){instance_destroy()};
with(objBossThroughBlock_01){instance_destroy()};
with(objBossThroughBlock_02){instance_destroy()};
action_kill_object();
action_set_relative(0);
