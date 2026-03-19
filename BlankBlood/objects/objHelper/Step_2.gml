{
	with(objNormal){
		with(other){
			if(!global.retry && (dis > 600 || place_meeting(x,y,objBlock))){
				x=other.x+random(10);
				y=other.y-random(10);
				if(!place_meeting(x,y,objBlock)) effect_create_below(ef_ring,x,y,0,c_lime);
				else                             move_outside_solid(90,100);
			}
		}
	}
}

