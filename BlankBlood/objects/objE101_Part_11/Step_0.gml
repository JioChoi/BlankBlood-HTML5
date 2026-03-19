switch (motion)
{
	case 0: 
		image_speed = 0.5;
		if(round(image_index)==6){
			col = collision_rectangle(x-32,y+70,x+32,y+100,objNormal,0,1);
			with(col){
				if(!global.bind && !global.retry){
					global.bind = 100;
					bindkind = 2;
					deadkind = 61;
					cutkind = 0;
					sound_play(global.SndHit_08);
					Particle(global.SprEffect_Particle[21],x,y,20,50,50,0.98,0,180,10,10,10,20,0.1,0.4,0.2);

					step = 0;
					premouse_x = mouse_x;
					premouse_y = mouse_y;
					instance_change(objBind,false);
					with(other){step=0;motion = 1;};
				}
			}
		}
		if(image_index > 8){
			motion = 10;
			step = 0;
		}
		break;
	case 1:
		image_speed = 0;
		image_index = 6;

		with(objNormal){
			x = other.x-13+dir*26;
			y = other.y+128;
			if(Percentage(5)){
				image_index = 0;
				Particle(global.SprEffect_Particle[21],x,y,3,50,50,0.98,0,180,5,10,10,20,0.1,0.4,0.2);
			}
		}

		if(!global.bind){
			step = 0;motion = 10;image_index = 0;
		}else {
			global.bind += 2;
			if(global.bind>100) global.bind = 100;
		}

		if(step>80){
			with(objNormal){
				step = 0;
				deadkind = 61;
				alarm[11] = 1;
			}
			voice_play(VicFacehug(1));
			sound_play(global.SndBoss[1]);
			step = 0;
			motion = 2;
			image_index = 6;
		}
		break;
	case 2:
		image_speed = 0;
		image_index = 6;

		with(objNormal){
			global.HP[global.chara] -= random(2);
			gravity = 0;
			speed = 0;
			x = other.x;
			y = other.y+128;
			if(Percentage(2)) image_index += 1;

			if(Percentage(70) && step<100){
					Particle(global.SprEffect_Particle[21],x,y,2,2,5,0.98,0,360,0,1,10,20,0.1,0.3,0.2);
					quake(2,1);effect_create_above(ef_smokeup,x-40+random(40),y-40+random(40),round(random(1)),c_white);
			}

			if(140<step){
				if(step<280){
					if(Percentage(30)) Particle(global.SprEffect_Particle[21],x,y+12,3,1,1,0.6,265,10,0,1,10,20,0.1,0.1,0.2);
				}else if(step<320){
					if(Percentage(80)) Particle(global.SprEffect_Particle[21],x,y+12,3,1,1,0.6,265,10,0,1,10,20,0.1,0.1,0.2);
				}else if(step<380){
					if(Percentage(50)) Particle(global.SprEffect_Particle[21],x,y+12,3,1,1,0.6,265,10,0,1,10,20,0.1,0.1,0.2);
				}else if(step<440){
					if(Percentage(20)) Particle(global.SprEffect_Particle[21],x,y+12,3,1,1,0.6,265,10,0,1,10,20,0.1,0.1,0.2);
				}else if(Percentage(5)) Particle(global.SprEffect_Particle[21],x,y+12,3,1,1,0.6,265,10,0,1,10,20,0.1,0.1,0.2);
			}
			if(step>600 && global.HP[global.chara]<0){
				step = 1;
				deadkind = 13;
				cutkind = 1;
				global.bind = 0;
				alarm[11] = 1;
				other.step = 0;
				other.motion = 3;
			}
		}
		break;
	case 3:
		break;
	case 4:
		break;
	case 10:
		if(step > 80){
			with(objNormal){
				if(point_distance(x,y,other.x,other.y) < 200){
					other.step = 0;
					other.motion = 0;
				}
			}
		}

		if(image_index > 8){
			image_speed = 0;
			image_index = 0;
		}
		break;
}
step += 1;
