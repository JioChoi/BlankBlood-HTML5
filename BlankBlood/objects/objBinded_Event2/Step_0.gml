var __b__;
__b__ = action_if_variable(global.joypad, 1, 0);
if __b__
{
__b__ = action_if_variable(global.Button[global.key[20]], 2, 0);
if __b__
{
{
__b__ = action_if_variable(global.retry, true, 0);
if __b__
{
{
global.bullet = 8;
DataLoad();
}
}
if(image_index<4) image_speed = 0.5;
else{
image_speed = 0;
if(Percentage(1)) image_index = 0;
}
step += 1;
}
}
}
