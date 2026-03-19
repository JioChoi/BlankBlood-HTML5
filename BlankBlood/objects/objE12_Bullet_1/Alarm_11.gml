action_set_relative(1);
var __b__;
__b__ = action_if_variable(flag, 0, 0);
if __b__
{
{
action_effect(4, 0, 0, 0, 16777215, 0);
{
action_set_relative(0);
flag = 1;
action_set_relative(1);
}
action_set_vspeed(-10+random(15));
{
action_set_relative(0);
hspd = -hspd*0.3;
action_set_relative(1);
}
{
action_set_relative(0);
action_set_gravity(270, 0.98);
action_set_relative(1);
}
}
}
action_set_relative(0);
