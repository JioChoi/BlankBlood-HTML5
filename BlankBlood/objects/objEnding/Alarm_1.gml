action_set_relative(0);
{
	objEnding.shake = 10;
	objEnding.doit = true;
	objEnding.alarm[3] = 40;
	Flash(c_white,0.5,0.01);
	sound_play(global.SndBomb);
}
action_effect(0, 154+64, 209+40, 0, 33023, 0);
action_effect(0, 154+64, 209+40, 0, 16777215, 0);
{
action_set_relative(1);
action_effect(5, 154+64, 209+40, 0, 0, 0);
action_set_relative(0);
}
flag = 1;
global.scr_dark = -9;
Particle(sprPdot,154+64,249,250,30,30,0.1,90,-80,1,5,30,20,1,0.5,1);
action_set_relative(0);
