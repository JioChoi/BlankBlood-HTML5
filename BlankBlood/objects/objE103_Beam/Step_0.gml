if(time){
	if(step mod time == 0){
		sound_play(global.SndBoss[2]);
		time-=1;
		step = 0;
	}
	step += 1;
}else{
	if(step == 3){
		with(objBlock2){
			if(!instance_exists(objE103_Collision)) instance_destroy();
		}
		with(objNormal){
			if(x<other.x){
				Flash(c_white,1,0.1);
				Particle(global.SprEffect_Particle[20],x,y,60,50,50,0.98,135,40,7,10,10,20,0.1,0.9,0.4);
				deadkind = 999;
				global.bind = -100;
				global.HP[global.chara] = 0;
				alarm[11] = 1;
			}
		}
		var numb;
		numb = 0;
		for(i=0;i<3;i+=1){
			with(global.sw00){global.switches[numb] = shaff();numb+=1;};
			with(global.sw01){global.switches[numb] = shaff();numb+=1;};
			with(global.sw02){global.switches[numb] = shaff();numb+=1;};
			with(global.sw03){global.switches[numb] = shaff();numb+=1;};
			with(global.sw04){global.switches[numb] = shaff();numb+=1;};
			with(global.sw05){global.switches[numb] = shaff();numb+=1;};
			with(global.sw06){global.switches[numb] = shaff();numb+=1;};
			with(global.sw07){global.switches[numb] = shaff();numb+=1;};
		}

		quake(10,10);
		Flash(c_white,1,0.1);
		effect_create_below(ef_ring,x,y,round(random(2)),c_blue);
		effect_create_below(ef_ring,x,y,round(random(2)),c_white);
		for(i=0;i<50;i+=1){
			effect_create_below(ef_smokeup,x-10-random(10)*i,y,round(random(2)),c_gray);
			if(i mod 5 == 0)effect_create_below(ef_firework,x-10-random(10)*i,y,round(random(1)),c_white);
		}
		image_alpha = 1;
		sound_play(global.SndBoss[3]);
		with(objE103_Collision){
			hspd = 100/weight;
			HP -= 3500;
			if(HP<=0) alarm[11] = 1;
		}
	}else if(image_alpha<-1) instance_destroy();
	image_alpha -= 0.05;
	step += 1;
}

