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
}
}
{
action_set_relative(0);
action_set_vspeed(0);
action_set_relative(1);
}
action_set_relative(0);
