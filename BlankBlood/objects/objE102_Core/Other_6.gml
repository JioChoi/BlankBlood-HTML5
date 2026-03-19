action_set_relative(0);
var __b__;
__b__ = action_if_variable(mmm mod 3, 0, 0);
if __b__
{
{
temp = 0;
with(objNormal){other.temp = point_direction(mouse_x,mouse_y,x,y)}
action_create_object_motion(objE102_Bullet_2, mouse_x, mouse_y, 25, temp -10 + random(20));
}
}
{
action_set_relative(1);
mmm += 1;
action_set_relative(0);
}
action_set_relative(0);
