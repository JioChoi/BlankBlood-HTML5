action_set_relative(1);
if(global.distance < 1900 && global.distance > 100 ){
	switch(kind){
		case -1 : 
			if(step mod 12 == 0){
				if(Percentage(90)){
					kind = -1;
				}else kind = 2;
			}
			break;
		case 0 : 
			if(step mod 12 == 0){
				inst = instance_create(-64,416,objGround0);
				inst.hspeed = 16;
				inst = instance_create(-128,416,objGround0);
				inst.hspeed = 16;
				inst = instance_create(-192,416,objGround0);
				inst.hspeed = 16;
				if(Percentage(10)) kind = 1;
			}
			break;
		case 1 :
			if(step mod 12 == 0){
				inst = instance_create(-192,416,objGround1);
				inst.hspeed = 16;
				kind = -1;
			}
			break;
		case 2 :
			if(step mod 12 == 0){
				inst = instance_create(-192,416,objGround2);
				inst.hspeed = 16;
				kind = 0;
			}
		break;
	}
	
	if(step mod 200 == 0){
		inst = instance_create(view_xview-32,320,objBarricade);
		inst.HP = 2;	inst.value = 15;
	}

}else if(global.distance>0 && global.distance < 50 ){
	if(step mod 4 == 0){
		kind = -1;
		instance_create(view_xview-32,320,objShut);
	}
}else if(global.distance < 0){
	with(objNormal){
		with(instance_create(x,y,objMovRoomAny)){
			xp=0;
			yp=0;
			rm_x=11;
			rm_y=2;
			flag=0;
		};
	}
}
global.distance -= 0.75;

step += 1;
action_set_relative(0);
