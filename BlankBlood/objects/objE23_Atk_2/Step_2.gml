{
	ang = 0;
	with(objNormal){
		if(x<other.x){
			other.dir = 1;
		}else if(x>other.x){
			other.dir = -1;
		}
		with(other){
			ang = point_direction(x,y,other.x,other.y);
		}
	}

	if(image_index>3) image_index = 3;
	if(step<40){
		motion_set(ang+180,5);
		if(step==39) motion_set(90,0);
	}else if(step>100){
		step = 0;
		image_index = 0;
		instance_change(objE23_Normal,false);
	}else if(step>60){
		motion_add(ang+random(20),3);
		if(speed>20) speed=20;
		if(speed>15){ 
			col = collision_rectangle(x,y,xprevious,yprevious,objNormal,0,1);
			with(col){
				if(!global.bind && !inv){
					if(!global.fdown){
						global.bind = 100;
						bindkind = 5;
						deadkind = 10;
						cutkind = 0;
						Particle(global.SprEffect_Particle[21],x,y,30,50,50,0.98,180,180,5,10,10,20,0.1,0.4,0.2);
						global.HP[global.chara] -= random(5);
						sound_play(global.SndHit_08);

						step = 0;
						premouse_x = mouse_x;
						premouse_y = mouse_y;
						instance_change(objBind,false);
						with(other){
							speed = 0;
							vspeed = -1;
							image_index = 0;
							bind = true;step = 0;
							instance_change(objE23_Bind_1,false);
						}
					}else{
						global.bind = 100;
						bindkind = 5;
						deadkind = 10;
						cutkind = 0;
						Particle(global.SprEffect_Particle[21],x,y,30,50,50,0.98,180,180,5,10,10,20,0.1,0.4,0.2);
						global.HP[global.chara] -= random(5);
						sound_play(global.SndHit_08);

						step = 0;
						premouse_x = mouse_x;
						premouse_y = mouse_y;
						instance_change(objBind,false);
						with(other){
							speed = 0;
							vspeed = -1;
							image_index = 0;
							bind = true;step = 0;
							instance_change(objE23_Finish_1,false);
						}
					}
				}
			}
		}
	}
	step+=1;
}
