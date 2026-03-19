{
	with(objNormal){
		if(other.dir) x = other.x;
		else x = other.x;
		y = other.y;

		if(global.HP[global.chara]<=0){
			if(!global.retry){
				with(other){if(image_index>15) instance_change(objE23_Finish_1,false);}
			}
		}else{
			//if(Percentage(4)){
			//	image_index = 0;
			//	Particle(global.SprEffect_Particle[21],x,y,2,5,5,0.98,260,20,0,1,10,20,0.1,0.4,0.2);
			//}
		}
	}

	if(image_index == 5){
		Effect(x-10+random(20),y-10+random(20),1);
		quake(20,5);
		Flash(c_red,0.2,0.05);

		global.HP[global.chara] -= 5;
		global.fdown += 101;
		global.bind += 20;
		voice_play(VicNormalDmg(2));
		sound_play(global.SndHit_00);
	}

	
	if(image_index>15) image_index = 3;
	if(image_index==3) image_speed = 0;
	else image_speed = 0.5;
	if(image_index==3 && Percentage(10)) image_index += 1;

	if(!global.bind){
		if(global.fdown){
			with(objNormal){
				dmgkind = 11;
				deadkind = 10;
				downkind = 10;
				step = 0;
				inv = 1;
				global.bind = -100;
				image_alpha = 1;
				dashKey = 0;
				dash = false;
				crouch = false;
				cutkind = 0;
				if(global.HP[global.chara]<=0) alarm[11] = 1;
				instance_change(objDown,false);
			}
		}else global.fdown = -100;
		instance_change(objE23_Normal,false);
	}else{
		global.bind += 0.7;
		if(global.bind>100) global.bind = 100;
	}

	step += 1;
}
