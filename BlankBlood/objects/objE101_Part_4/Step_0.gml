action_set_relative(1);
with(objNormal){
	other.dis = point_distance(x,y,other.x+22*32,other.y-32*10);
}

if(motion == 0 && !global.bind){
	if(dis<300 && Percentage(3)){step=0;image_index=0;motion = 1;}
	else if(Percentage(3) && !global.bind){step=0;image_index=0;motion = 2;}

}
{
	switch (motion)
	{
	case 0: image_angle = 5+sin(step/22);posx=3*sin(step/30); break;
	case 1: image_angle = -45+80*sin(step/6); posx=10*sin(step/4);posy=5*sin(step/7) ;if(step>34){image_index=0;image_speed = 1;motion = 0};break;
	case 2: 
		if(step<20){
			image_angle = 20+20*sin(step/4);
			posx=0;
			posy=-20*sin(step/4) ;
		}else if(20<=step && step<75){
			image_index = 18;
			if(step == 20){
				Particle(global.SprEffect_Particle[21],672,944,20,50,50,0.98,0,180,10,10,10,20,0.1,0.4,0.2);
				sound_play(global.SndHit_11);
				quake(20,10);
			}

			if(step == 25) with(objNormal){other.temp = x};
			if(step = 30&&Percentage(33)){
				if(!instance_exists(objE101_Obj06)){quake(30,10);instance_create(temp,944,objE101_Obj06);Particle(global.SprEffect_Particle[21],temp,944,30,50,50,0.98,0,180,10,10,10,20,0.1,0.4,0.2);};
			}else if(step = 35&&Percentage(33)){
				if(!instance_exists(objE101_Obj06)){quake(30,10);instance_create(temp,944,objE101_Obj06);Particle(global.SprEffect_Particle[21],temp,944,30,50,50,0.98,0,180,10,10,10,20,0.1,0.4,0.2);};
			}else if(step = 40){
				if(!instance_exists(objE101_Obj06)){quake(30,10);instance_create(temp,944,objE101_Obj06);Particle(global.SprEffect_Particle[21],temp,944,30,50,50,0.98,0,180,10,10,10,20,0.1,0.4,0.2);};
			}
		}else{
			image_angle = 0+20*sin(step/4);
			posx=0;
			posy=-20*sin(step/4) ;
			image_speed = -1;
		}
		if(step>92){image_index=0;image_speed = 1;motion = 0};
		break;
	default: break;
	}

	switch (motion)
	{
	case 1:
		if(15<step&&step<25){
			if(step==16) sound_play(global.SndSwing_4);
			var px,py;
			px = x+posx+22*32;py = y+posy-32*10;
			col = collision_rectangle(px,py,px+230*cos(degtorad(image_angle-105)),py-230*sin(degtorad(image_angle-105)),objNormal,0,1);
			with(col){
				if(!inv && !global.retry){
					if(global.HP[global.chara]/global.HPMAX[global.chara] < 0.8){
						dmgkind = 22;
						deadkind = 0;
						pow = 70+random(10);
						direct = rev_angle(5)-random(5);
					}else{
						dmgkind = 21;
						deadkind = 10;
						pow = 50;
						direct = rev_angle(0);
					}
					cutkind = 0;
					Particle(global.SprEffect_Particle[21],x,y,20,50,50,0.98,0,360,10,10,10,20,0.1,0.4,0.2);
					global.HP[global.chara] -= 10+random(5);
					sound_play(global.SndHit_04);

					step = 0;
					if(global.HP[global.chara]<=0) alarm[11] = 1;
					instance_change(objDamage,false);
				}
			}
		}
		break;
	case 2:

		break;
	default: break;
	}
}
step += 1;
action_set_relative(0);
