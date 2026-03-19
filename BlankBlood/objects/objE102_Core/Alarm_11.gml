action_set_relative(0);
global.bind = -100;
{
action_set_relative(1);
score += point;
action_set_relative(0);
}
with(objE102_Shredder){image_speed = 0};
with(Wire01){instance_destroy()};
with(Wire02){instance_destroy()};
with(PileBunk){instance_destroy()};
with(Laser){instance_destroy()};
with(Arm01){instance_destroy()};
with(Arm02){instance_destroy()};
with(objBossBlock){instance_destroy()};
with(objBossThroughBlock_01){instance_destroy()};
with(objBossThroughBlock_02){instance_destroy()};
Flash(c_white,1,0.01);
sound_play(global.SndHit_11);
inst = instance_create(0,0,objE102_Destroy);
inst.alarm[0] = random(40);
inst.alarm[1] = alarm[0]+random(100);
inst.alarm[2] = alarm[1]+random(100);
inst.alarm[3] = alarm[2]+random(100);
instance_create(448,448,objThroughBlock_01);
instance_create(448+32*1,448,objThroughBlock_01);
instance_create(448+32*2,448,objThroughBlock_01);
instance_create(448+32*3,448+32,objThroughBlock_01);

instance_create(448,1312,objBlock);
instance_create(448+32*1,1312,objBlock);
instance_create(448+32*2,1312,objBlock);
instance_create(448+32*3,1312,objBlock);
instance_create(448+32*4,1312,objBlock);
action_kill_object();
action_set_relative(0);
