if(round(image_index)==8){
	if(image_index==8) sound_play(global.SndSwing_3);
	col = collision_line(x,y,x+lengthdir_x(350,image_angle),y+lengthdir_y(400,image_angle),objNormal,0,1);
	with(col){
		if(!inv && !global.bind){
			dmgkind = 11;
			deadkind = 10;
			downkind = 10;
			pow = 0;
			direct = 0;
			Particle(global.SprEffect_Particle[21],x,y,10,50,50,0.98,0,180,5,10,10,20,0.1,0.4,0.2);
			global.HP[global.chara] -= 5+random(10);
			sound_play(global.SndHit_02);

			step = 0;
			inv = 1;
			global.bind = -100;
			global.fdown = 100;
			image_alpha = 1;
			dashKey = 0;
			dash = false;
			crouch = false;
			cutkind = 0;
			speed = pow;
			direction = direct;

			if(global.HP[global.chara]<=0) alarm[11] = 1;
			instance_change(objDown,false);

			if(Percentage(40)) sound_play(global.SndHit_23);
			else if(Percentage(40)) sound_play(global.SndHit_24);
			else{sound_play(global.SndHit_23);sound_play(global.SndHit_24);}
			quake(30,30);
			Flash(c_white,0.8,0.05);
			voice_play(VicElectricDmg(0));
		}
	}
}

if(image_index>13) image_index=0;
if(image_index==0) image_speed=0;
else image_speed = 0.5;
