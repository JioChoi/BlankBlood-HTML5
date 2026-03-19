	col = collision_rectangle(x,y,x+32,y+96,objNormal,0,1);
	with(col){
		if(global.fdown>50)global.fdown = 50;
	}

