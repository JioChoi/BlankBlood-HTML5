if(global.distance<1800 && global.distance>150){
	if(mode==0){
		if(step mod 8 == 0){sound_play(global.SndHit_18);quake(2,3);}
		image_speed = 0.75;
		amount += random(5);
		if(amount > 760){amount = 760; }
		if(global.retry) mode = 1;
	}else if(mode==1){
		if(step mod 4 == 0){sound_play(global.SndHit_18);quake(15,15);}
		image_speed = 0.8;
		amount += 2+random(8);
		if(amount > 600){amount = 600; mode=0}
	}else if(mode==2){
		if(step mod 9 == 0){sound_play(global.SndHit_18);quake(1,2);}
		image_speed = 0.6;
		amount -= 1;
		if(amount < 0){amount = 0;mode=1}
		if(global.retry) mode = 1;
	}
	
	if(step mod 80 == 0){
		if(Percentage(60)) instance_create(room_width-amount+96,416-16,objE103_Bashi);
	}
	
	if(step mod 160 == 0){
		if(Percentage(80)){
			inst = instance_create(view_xview+view_wview,250,objE103_Nyuru);
			with(inst){motion_set(140+random(35),5+random(8));}
			inst = instance_create(view_xview+view_wview,250,objE103_Nyuru);
			with(inst){motion_set(140+random(35),5+random(8));}
			inst = instance_create(view_xview+view_wview,250,objE103_Nyuru);
			with(inst){motion_set(140+random(35),5+random(8));}
		}
	}
	
	if(global.distance > 1750){
		mode = 1;
		amount += 3;
	}else if(global.distance < 400){
		if(step mod 30 == 0){
			if(Percentage(90) && amount < 700) mode = 1;
			else mode = 0;
		}
	}else{
		if(step mod 150 == 0){
			if(amount < 120){
				if(Percentage(10)) mode = 0;
				else if(Percentage(60) && amount < 650) mode = 1;
				else mode = 2;
			}else{
				if(Percentage(50)) mode = 0;
				else if(Percentage(50) && amount < 650) mode = 1;
				else mode = 2;
			}
		}
	}
	
	col = collision_rectangle(room_width-amount+250,200,room_width,414,objGround,1,1)
	if(!col) col = collision_rectangle(room_width-amount+80,200,room_width,414,objBlock,1,1)
		with(col){ instance_destroy(); }
		
		if(collision_rectangle(room_width-amount+80,324,room_width,414,objNormal,1,1)){
			if(global.HP[0]>=0){
			with(objNormal){
				effect_create_above(ef_explosion,x,y,2,c_maroon);
				effect_create_above(ef_explosion,x,y,1,c_black);
				quake(30,20);
				Flash(c_red,0.8,0.05);
				sound_play(global.SndHit_11);
				sound_play(global.SndHit_17);
				global.HP[0] -= 200;
				if(global.HP[0]<0) alarm[11] = 1;
				inv = 1;
				alarm[1] = 60;
			}
		}
	}

	with(collision_rectangle(room_width-amount+120,0,room_width,414,objThrow,1,1)){
		quake(30,20);
		Flash(c_red,0.2,0.05);
		voice_play(VicElectricDmg(0));
		sound_play(global.SndHit_06);
		sound_play(global.SndHit_07);
		Particle(global.SprEffect_Particle[20],other.x,other.y,200,30,30,0.98,70,80,5,20,30,20,0.1,0.4,1);
		instance_destroy();
	}

}else if(global.distance<150 && global.distance>30){
	if(step mod 9 == 0){sound_play(global.SndHit_18);quake(4,6);}
	image_speed = 0.6;
	if(amount > 0){amount -= 3;mode=2}
}else if(global.distance<30 && global.distance>0){
	amount = 0;
}else if(step==250){
	if(!sound_isplaying(global.SndBoss[0])){
		sound_play(global.SndBoss[0]);
		quake(60,20);
		Flash(c_red,0.8,0.01);
		sound_play(global.SndHit_11);
		sound_play(global.SndHit_17);
	}
}
	
step += 1;

