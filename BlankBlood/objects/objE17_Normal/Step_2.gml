{
	with(objNormal){
		if(other.NoticeZone){
			if(x<other.x){
				other.dir = 0;
			}else if(x>other.x){
				other.dir = 1;
			}
		}
	}

	if(NoticeZone){
		if(!dir){
			if( place_free(x-run,y) ) x -= run;
			move = true;
		}else{
			if( place_free(x+run,y) ) x += run;
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
		if(!air && Percentage(30)) instance_change(objE17_Atk_1,false);
	}
}
