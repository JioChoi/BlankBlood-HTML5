var inst;
	if(left == 2 || right == 2 || up == 2 || b1 == 2 || b2 == 2){
		global.bind -= global.HP[global.chara]/8;
	}
	if(global.chara){
		inst = point_distance(premouse_x,premouse_y,mouse_x,mouse_y)
		global.bind -= (inst/50) * (global.HP[global.chara]/global.HPMAX[global.chara]);
  		premouse_x = mouse_x;
  		premouse_y = mouse_y;
 	}
{
if(step == 0){
if(bindkind == 2 || bindkind == 5) voice_play(VicFacehug(0));
else voice_play(VicBind(0));

image_alpha = 1;
image_index = 0;
dashKey = 0;
dash = false;
crouch = false;
cutkind = 0;

speed = 0;
}

if(global.bind <= 0){
global.bind = -100;
inv = 1;
vspeed = -2;
alarm[1] = 60;
if(place_meeting(x,y,objBlock)) move_outside_solid(90,-1);
instance_change(objNormal,false);
}

switch (bindkind)
{
/*-------------���---------------*/
case 1:
if(image_index > 7){
image_index = 7;
}
if(left == 2 || right == 2 || up == 2 || b1 == 2 || b2 == 2){
image_index =random(7);
}
break;
case 2:
if(left == 2 || right == 2 || up == 2 || b1 == 2 || b2 == 2){
image_speed = 1;
}else image_speed = 0;
break;
case 3:
if(left == 2 || right == 2 || up == 2 || b1 == 2 || b2 == 2){
image_speed = 0.5;
}else image_speed = 0.25;
break;
case 6:
if(left == 2 || right == 2 || up == 2 || b1 == 2 || b2 == 2){
image_speed = random(1.5);
}else image_speed = 0.3;
break;
case 7:
image_speed = 0;
image_index += random(0.5);
break;
case 8:
if(image_index>7) bindkind = 3;
break;
default: break;
}
step += 1;
}

/* */
/*  */
