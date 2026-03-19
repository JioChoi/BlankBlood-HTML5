action_set_relative(1);
image_yscale = 1.05+0.05*sin(step/18);

if(collision_rectangle(x,y,x+832,y-67,objNormal,0,1)){
	with(objNormal){
		speed=0;
		gravity=0;
		air=0;
		y+=0.3;
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

with(collision_rectangle(x,y,x+832,y-350,objNormal,0,1)){
	if(Percentage(15) && air && !instance_exists(objE101_Obj10)) instance_create(x-60+random(120),other.y,objE101_Obj10);
}
step += 1;
action_set_relative(0);
