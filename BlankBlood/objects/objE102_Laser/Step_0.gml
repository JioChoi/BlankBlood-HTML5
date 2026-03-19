if(image_index>250) image_index = 0;
if(image_index==0){image_speed = 0;sound_stop(global.SndSe_2);}
else image_speed = 1;
if(image_index == 1){
	dire = 1+(Percentage(50)*-2);
	sound_play(global.SndSe_1);
}
if(image_index == 79) sound_loop(global.SndSe_2);
if(80<image_index){
	image_angle += 0.7*dire;
	with(Laser){
		x=other.x+lengthdir_x(100,other.image_angle);
		y=other.y+lengthdir_y(100,other.image_angle);
		move_contact_solid(other.image_angle,-1);
		other.las_x = x;
		other.las_y = y;
	}
	col = collision_line(x+lengthdir_x(100,image_angle),y+lengthdir_y(100,image_angle),las_x,las_y,objNormal,0,1);
	with(col){
		if(!inv && !global.bind){
			global.bind = -100;
			if(Percentage(50)){
				dmgkind = 11;
				deadkind = 10;
				cutkind = 1;
				pow = 0;
				direct = 0;
				Particle(global.SprEffect_Particle[20],x,y,30,50,50,0.98,0,180,5,10,10,20,0.1,0.9,0.4);
				global.HP[global.chara] -= 15+random(10);
				sound_play(global.SndHit_00);

				step = 0;
				if(global.HP[global.chara]<=0){
					alarm[11] = 1;
				}
			}else{
				dmgkind = 21;
				deadkind = 70;
				if(Percentage(70)){cutkind = 2;Particle(global.SprEffect_Particle[20],x,y,30,50,50,0.98,0,180,5,10,10,20,0.1,0.9,0.4);}
				else cutkind = 0;
				pow = 0;
				direct = 0;
				Particle(global.SprEffect_Particle[20],x,y,30,50,50,0.98,0,180,5,10,10,20,0.1,0.9,0.4);
				global.HP[global.chara] -= 15+random(10);
				sound_play(global.SndHit_00);
				step = 0;
				if(global.HP[global.chara]<=0){
					inst = instance_create(x,y,objCut);
					inst.cutkind = cutkind;
					inst.dir = dir;
					alarm[11] = 1;
				}
			}
			instance_change(objDamage,false);
		}
	}
}
