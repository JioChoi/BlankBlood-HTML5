action_set_relative(1);
{
	if(step>term){
		image_alpha -= 0.05;
		if(image_alpha<0) instance_destroy();
	}else{
		image_alpha += 0.05;
		if(image_alpha>1) image_alpha=1;
	}

	if(Percentage(1)) instance_create(x-3+random(6),y+30,objE101_Obj05);
	image_yscale = 1.05+0.05*sin(step/18);
	if(place_meeting(x,y,objNormal)){
		with(objNormal){
			if(vspeed>=0 && y<other.y-20){
				speed=0;
				gravity=0;
				air=0;
				y+=other.vspeed;
				hspeed *= 0.8;

			if(!global.retry){
				var inst;
				if(up == 2){
					if(!air) 	vspeed = -JHigh/1.2;
					else if(jump){
						effect_create_below(ef_ellipse,x,y+48,0,c_blue);
						effect_create_below(ef_ellipse,x,y+48,0,c_white);
						effect_create_below(ef_ellipse,x,y+48,0,c_white);
						vspeed = (-JHigh*0.95)/1.2;
						jump = false;
					}
				}else if(up == 3){
				}else if(up == 1){
				}

				if(!global.chara){
					if(b2 == 2){
						if(!air) 	vspeed = -JHigh/1.2;
						else if(jump){
							effect_create_below(ef_ellipse,x,y+48,0,c_blue);
							effect_create_below(ef_ellipse,x,y+48,0,c_white);
							effect_create_below(ef_ellipse,x,y+48,0,c_white);
							vspeed = (-JHigh*0.95)/1.2;
							jump = false;
						}
					}else if(b2 == 3){
					}else if(b2 == 1){
					}
				}
			}

			}
		}
	}
}

step += 1;
action_set_relative(0);
