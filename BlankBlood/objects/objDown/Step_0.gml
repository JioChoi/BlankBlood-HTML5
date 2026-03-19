var inst;
	global.fdown -= 1;
	if(left == 2 || right == 2 || up == 2 || b1 == 2 || b2 == 2){
		global.fdown -= global.HP[global.chara]/16;
	}
	if(global.chara){
		inst = point_distance(premouse_x,premouse_y,mouse_x,mouse_y)
		global.fdown -= (inst/100) * (global.HP[global.chara]/global.HPMAX[global.chara]);
  		premouse_x = mouse_x;
  		premouse_y = mouse_y;
 	}
{

	if(step>60) inv=false;
	if(global.fdown <= 0){
		global.fdown = -100;
		downkind = 0;
		inv = 1;
		alarm[1] = 60;
		instance_change(objNormal,false);
	}

	switch (downkind)
	{
	/*-------------���---------------*/
	case 10:
		global.bind = 0;
		image_speed = 0.25;
		if(image_index > 5){
			if(Percentage(50)) downkind = 11;
			else downkind = 12;
			image_index = 0;
		}
		if(step == 0 && Percentage(33)) downkind = 20;
		break;
	case 11:
		global.bind = 0;
		if(image_index > 4){
			image_index = 4;
			image_speed = 0;
		}else image_speed = 0.25;
		break;
	case 12:
		global.bind = 0;
		if(image_index > 7){
			image_index = 7;
			image_speed = 0;
		}else image_speed = 0.25;
		break;
	case 20:
		global.bind = 0;
		if(image_index > 23){
			image_index = 23;
			image_speed = 0;
		}else image_speed = 0.25;
		break;
	default: break;
	}
	step += 1;
}
/* */
/*  */
