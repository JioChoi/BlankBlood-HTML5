action_set_relative(1);
image_yscale = 1.05+0.05*sin(step/18);

if(collision_rectangle(x,y,x+320,y-32*21,objNormal,0,1)){
	if(step mod 20 == 0) instance_create(x+100+random(120),y-random(32*21),objE101_Part_7);
}

if(collision_rectangle(x+96,y,x+320-96,y-67,objNormal,0,1)){
	with(objNormal){
		speed=0;
		gravity=0;
		air=0;
		y+=0.15;
//		walk=1;
//		run=1;
		hspeed *= 0.5;
		instance_create(x-64+random(128),other.y-64,objE101_Obj09);
		global.HP[global.chara] -= 0.3;
		if(Percentage(10)){quake(5,5);effect_create_above(ef_smokeup,x-40+random(40),y-40+random(40),round(random(1)),c_white)};
		if(global.HP[global.chara]<=0){
			if(!other.flag){
				sound_stop(global.SndBoss[0]);
				sound_play(global.SndBoss[1]);
				other.flag = true;
				Flash(c_black,0,-0.005);
				alarm[11] = 1;
			}
		}else if(!other.flag2){other.flag2 = true;sound_loop(global.SndBoss[0]);};
	}
}else{
	if(flag2){
		flag2 = false;
		sound_stop(global.SndBoss[0]);
	}
}

if(collision_rectangle(x+96,y-32*20,x+320-96,y-32*21,objNormal,0,1) && step>40){
	with(objNormal){
		vspeed=-5;
		gravity=0;
		y-=0.1;

		if(!other.flag){
			other.flag = true;
			fl = Flash(c_black,0,-0.2);
		}
		with(fl){
	 		if(alpha==1){
				minus = 0.2;
				with(objE101_Obj04){instance_destroy()};
				with(objE101_Obj03){instance_destroy()};
				with(objE101_Part_6){instance_destroy()};
				with(objE101_Part_7){instance_destroy()};
				with(objNormal){x=288;y=864;vspeed = -10;Particle(global.SprEffect_Particle[21],x,y,50,50,50,0.98,0,180,15,10,10,20,0.1,1,0.6);};
				with(objE101_Part_5){fl=0;flag=0};
			}
		}
	}
}
step += 1;
action_set_relative(0);
