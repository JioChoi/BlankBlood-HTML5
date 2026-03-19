{
	if(air) rot+=12;
	else{rot=0;hspeed*=0.8;}

	with(objNormal){
		if(other.NoticeZone){
			if(x<other.x){
				other.dir = 1;
			}else if(x>other.x){
				other.dir = -1;
			}
		}
	}

	if(dir){
		if( place_free(x-walk,y) ) x -= run;
		move = true;
	}else{
		if( place_free(x+walk,y) ) x += run;
		move = true;
	}

	col = place_meeting(x,y,objNormal)
	with(col){
		if(Percentage(2)){
			if(Percentage(30)) Particle(global.SprEffect_Particle[20],x,y,10,50,50,0.98,45,90,3,10,10,20,0.1,0.4,0.6);
			with(other){Effect(x-10+random(20),y-10+random(20),1);}
			if(global.HP[global.chara] > 1) global.HP[global.chara] -= random(1);
			sound_play(global.SndHit_00);
		}
	}
}
