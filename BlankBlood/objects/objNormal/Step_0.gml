action_set_relative(0);
var __b__;
__b__ = action_if_variable(global.chara && b1, true, 0);
if !__b__
{
var inst;
	if(left == 2){
		if(dashKey == 1){
			if(!air){
				if(place_free(x-run-1,y)) x -= run;
			}
			dash = true;
			dashKey = 0;
		}else{
			dashKey = 1;
			alarm[0] = 10;
		}
		crouch = false;
	}else if(left == 3){
		dash = false;
	}else if(left == 1){
		if(dash){
			if(place_free(x-run-1,y)){
				move = 1;
				dir = 0;
				x -= run;
			}
		}else{
			if(place_free(x-walk-1,y)){
				move = 1;
				dir = 0;
				x -= walk;
			}
		}
		crouch = false;
	}

	if(right == 2){
		if(dashKey == 2){
			if(!air){
				if(place_free(x+run+1,y)) x += run;
			}
			dash = true;
			dashKey = 0;
		}else{
			dashKey = 2;
			alarm[0] = 10;
		}
		crouch = false;
	}else if(right == 3){
		dash = false;
	}else if(right == 1){
		if(dash){
			if(place_free(x+run+1,y)){
				move = 1;
				dir = 1;
				x += run;
			}
		}else{
			if(place_free(x+walk+1,y)){
				move = 1;
				dir = 1;
				x += walk;
			}
		}
		crouch = false;
	}

if(!global.ctrlmode){
	if(up == 2){
		if(!air){
			vspeed = -JHigh;
			crouch = false;
		}else if(jump){
			effect_create_below(ef_ellipse,x,y+48,0,c_blue);
			effect_create_below(ef_ellipse,x,y+48,0,c_white);
			effect_create_below(ef_ellipse,x,y+48,0,c_white);
			vspeed = -JHigh*0.95;
			jump = false;
			crouch = false;
		}
	}else if(up == 3){
	}else if(up == 1){
	}
}

	if(down == 2){
		if(!air && !move && !crouch) crouch = true;
	}else if(down == 3){
		crouch = false;
	}else if(down == 1){
		if(!air && !move && !crouch) crouch = true;
	}

}
	if(global.chara){
		if(global.gun_kind == 0) HandGun();
		else if(global.gun_kind == 1) MachineGun();
		else if(global.gun_kind == 2) ShotGun();
	}else{
		if(b1 == 2){
			if(global.gun_kind==0){
				if(!crouch){
					if(!air && up!=2 && b2!=2){
						if(!dash) instance_change(objR_Atk_1,true);
						else if(left || right)instance_change(objR_Atk_D,true);
						else instance_change(objR_Atk_1,true);
					}else if(!air){
						vspeed = -JHigh;	
						instance_change(objR_Atk_J,true);
					}else  instance_change(objR_Atk_J,true);
				}
			}else if(global.gun_kind == 1){
				if(!air){
					if(dash && global.weapon>=6) instance_change(objR_Atk_S3,true);
					else if(global.weapon>=2)instance_change(objR_Atk_S1,true);
				}
			}else if(global.gun_kind == 2){
				if(!air){
					if(global.weapon>=3) instance_change(objR_Atk_S4,true);
				}
			}else if(global.gun_kind == 3){
				if(!air){if(global.weapon > 1) instance_change(objR_Atk_S5,true);}
				else if(global.weapon > 0.4) instance_change(objR_Atk_S6,true);
			}
		}else if(b1 == 3){
		}else if(b1 == 1){
		}

		if(b2 == 2){
			if(!air){
				vspeed = -JHigh;
				crouch = false;
			}else if(jump){
				effect_create_below(ef_ellipse,x,y+48,0,c_blue);
				effect_create_below(ef_ellipse,x,y+48,0,c_white);
				effect_create_below(ef_ellipse,x,y+48,0,c_white);
				vspeed = -JHigh*0.95;
				jump = false;
				crouch = false;
			}
		}else if(b2 == 3){
		}else if(b2 == 1){
		}

		if(b3 == 2){
			change_wep_R();
		}else if(b3 == 3){
		}else if(b3 == 1){
		}

		if(b4 == 2){
		}else if(b4 == 3){
			dash=false;
		}else if(b4 == 1){
			dash=true;
		}
	}

image_angle = 0;
{
action_set_relative(1);
counter += 1;
action_set_relative(0);
}
__b__ = action_if_variable(counter, 3, 2);
if __b__
{
counter = 0;
}
action_set_relative(0);
