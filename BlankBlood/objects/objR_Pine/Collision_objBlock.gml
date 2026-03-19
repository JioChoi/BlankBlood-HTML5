action_set_relative(1);
var __b__;
__b__ = action_if_empty(0, vspeed, 0);
if !__b__
{
{
__b__ = action_if_variable(vspeed, 0, 1);
if __b__
{
action_move_contact(90, -1, 0);
}
else
{
action_move_contact(270, -1, 0);
}
{
action_set_relative(0);
action_set_vspeed(-vspeed*0.5);
action_set_relative(1);
}
{
action_set_relative(0);
action_set_hspeed(random(hspeed));
action_set_relative(1);
}
}
}
__b__ = action_if_empty(hspeed, 0, 0);
if !__b__
{
{
__b__ = action_if_variable(hspeed, 0, 1);
if __b__
{
action_move_contact(180, -1, 0);
}
else
{
action_move_contact(0, -1, 0);
}
{
action_set_relative(0);
action_set_hspeed(-hspeed);
action_set_relative(1);
}
}
}
action_set_relative(0);
