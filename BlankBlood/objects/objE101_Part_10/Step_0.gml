action_set_relative(1);
image_yscale = 1.05+0.05*sin(step/16);

col = collision_rectangle(x+32,y,x+224,y-64,objNormal,0,1);
with(col){
			if(!global.retry){
				y = yprevious;
				y += 0.1;
				speed=0;
				gravity=0;
				air=0;
				y+=other.vspeed;
				hspeed *= 0.8;
				jump = true;

/*---------------------------------------------------*/
var inst;
	if(up == 2){
		if(!air) 	vspeed = -JHigh;
		else if(jump){
			effect_create_below(ef_ellipse,x,y+48,0,c_blue);
			effect_create_below(ef_ellipse,x,y+48,0,c_white);
			effect_create_below(ef_ellipse,x,y+48,0,c_white);
			vspeed = -JHigh*0.95;
			jump = false;
		}
	}else if(up == 3){
	}else if(up == 1){
	}

	if(down == 2){
		if(!air && !move) crouch = true;
	}else if(down == 3){
		crouch = false;
	}else if(down == 1){
	}

	if(global.chara){
		HandGun();
	}else{
		if(b1 == 2){
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
		}else if(b1 == 3){
		}else if(b1 == 1){
		}

		if(b2 == 2){
			if(!air) 	vspeed = -JHigh;
			else if(jump){
				effect_create_below(ef_ellipse,x,y+48,0,c_blue);
				effect_create_below(ef_ellipse,x,y+48,0,c_white);
				effect_create_below(ef_ellipse,x,y+48,0,c_white);
				vspeed = -JHigh*0.95;
				jump = false;
			}
		}else if(b2 == 3){
		}else if(b2 == 1){
		}

		if(b4 == 2){
		}else if(b4 == 3){
			dash=false;
		}else if(b4 == 1){
			dash=true;
		}
	}

/*---------------------------------------------------*/
			}
}
/* */
step += 1;
/* */
action_set_relative(0);
/*  */
