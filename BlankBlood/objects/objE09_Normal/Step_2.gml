{
	with(objNormal){
		if(other.NoticeZone){

		}
	}

	if(NoticeZone){
		if(!dir){
			if( place_free(x-walk-1,y) ) x -= walk;
			move = true;
		}else{
			if( place_free(x+walk+1,y) ) x += walk;
			move = true;
		}
	}else{
		if(!dir){
			if( place_free(x-walk,y) ) x -= walk;
			move = true;
		}else{
			if( place_free(x+walk,y) ) x += walk;
			move = true;
		}
	}

	if(AtkZone){
		step = 0;
		if(!air && Percentage(50)) instance_change(objE09_Atk_1,false);
	}
}
