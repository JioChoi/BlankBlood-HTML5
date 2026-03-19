action_set_relative(1);
var __b__;
__b__ = action_if_variable(place_meeting(x,y,objBlock), 0, 0);
if __b__
{
{
var inst;
inst = instance_create(x,y,objOpenMsg);
inst.item = item;

inst = instance_create(x,y,objWeaponDisp);
inst.kind = item;
action_effect(5, 0, 0, 0, 16777215, 0);
score += global.item_point[item];
global.item_flag[item] += true;
{
action_set_relative(0);
image_index = 0;
action_set_relative(1);
}
sound_play(global.SndSwitch_1);
action_change_object(objE0a_Open, 0);
}
}
action_set_relative(0);
