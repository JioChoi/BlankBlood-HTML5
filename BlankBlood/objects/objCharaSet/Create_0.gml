action_set_relative(1);
{
	flag = 0;

	if(global.chara){
		walk = 5;
		run = 7;
		JHigh = 16;
	}else{
		walk = 4;
		run = 9;
		JHigh = 18;
	}

	counter = 0;
	dash = 0;
	dashKey = 0;
	crouch = 0;
	move= 0;
	jump = 1;
	step = 0;
	global.fdown = -100;
	global.bind = -100;
	global.retry = false;
	downkind = 0;
	dmgkind = 0;
	bindkind = 0;
	deadkind = 0;
	deadeffect= 0;
	cutkind = 0;
	pow = 0;
	direct = 0;
	joy_x = 0;
	joy_y = 0;

	global.voice = 1;
	inv = false;		//false-nomal true-inv
	dir = global.chr_dir;	//0-left 1-right
	air = 0;			//0-ground 1-air
	breath = 0;

	angle = 0;
	reload = 0;
	gun_dir = 0; 
	gun_index = 0;

	temp = 1;
	temp2 = 1;
	temp3 = 1;

	x = global.xpos;
	y = global.ypos;
	vspeed = global.move_vspeed;
 	premouse_x = mouse_x;
 	premouse_y = mouse_y;
 	Key_Check();

 	if(room==room55_n && global.clone) global.help=false;
}

var __b__;
__b__ = action_if_variable(global.help && global.helper, 1, 0);
if __b__
{
action_create_object(objHelper, 0, 0);
}
__b__ = action_if_variable(room, room71_n, 0);
if __b__
{
action_change_object(objEscape, 1);
}
else
{
action_change_object(objNormal, 0);
}
action_set_relative(0);
