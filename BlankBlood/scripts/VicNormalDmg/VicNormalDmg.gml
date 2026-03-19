function VicNormalDmg() {
	if(argument0 == 0){
		switch (round(random(7)))
		{
		case 0: return 1; break;
		case 1: return 2; break;
		case 2: return 3; break;
		case 3: return 4; break;
		case 4: return 5; break;
		case 5: return 6; break;
		case 6: return 7; break;
		case 7: return 51; break;
		default: break;
		}
	}else if(argument0 == 1){
		switch (round(random(9)))
		{
		case 0: return 51; break;
		case 1: return 52; break;
		case 2: return 53; break;
		case 3: return 54; break;
		case 4: return 15; break;
		case 5: return 16; break;
		case 6: return 17; break;
		case 7: return 18; break;
		case 8: return 19; break;
		default: break;
		}
	}else if(argument0 == 2){
		switch (round(random(4)))
		{
		case 0: return 10; break;
		case 1: return 11; break;
		case 2: return 12; break;
		case 3: return 13; break;
		case 4: return 14; break;
		default: break;
		}
	}



}
