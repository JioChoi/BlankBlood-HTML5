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

	var inst;
	inv = 1;
	global.bind = true;
	global.retry = true;
	image_alpha = 1;
	image_index = 0;
	hspeed = 0;
	gravity = 0;
	step += 1;

}
}
}
