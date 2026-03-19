action_set_relative(1);
var __b__;
__b__ = action_if_variable(global.chara, 0, 0);
if __b__
{
{
score += point;
action_kill_object();
}
}
{
action_set_relative(0);
global.assist = -1;
action_set_relative(1);
}
action_set_relative(0);
