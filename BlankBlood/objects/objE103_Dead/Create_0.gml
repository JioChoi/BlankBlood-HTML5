image_speed = 0;
dir = round(random(1));
cutkind = round(random(1));
chara = round(random(1));
x+=-20+random(40);

if(chara){
	switch (round(random(2)))
	{
	case 0:
		motion = 11;
		image_index = 4;
		break;
	case 1:
		motion = 12;
		image_index = 4+round(random(3));
		break;
	case 2:
		motion = 21;
		image_index = 4+round(random(3));
		break;
	}	
}else{
	switch (round(random(2)))
	{
	case 0:
		motion = 11;
		image_index = 2+round(random(2));
		break;
	case 1:
		motion = 12;
		image_index = 7;
		break;
	case 2:
		motion = 21;
		image_index = round(random(3));
		break;
	}
}
