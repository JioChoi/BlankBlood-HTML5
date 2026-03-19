if(d_flag){
	with(objNormal){
		x=other.x;y=other.y;
		speed=0;mask_index = sprite_index;
		if(Percentage(200+global.HP[global.chara])) Particle(global.SprEffect_Particle[20],x,y,5,5,5,0.98,90,10,0,6,10,20,0.1,0.9,0.5);
		global.HP[global.chara] -= 0.3;
		if(global.HP[global.chara]<-193) global.HP[global.chara] = -193;	
	}	
}

if(flag){
	if(!d_flag) image_alpha -= 0.01;
	speed = 0;
}else{ 
	image_angle = direction;
}
if(image_alpha<0) instance_destroy();
col = collision_rectangle(x,y,xprevious,yprevious,objNormal,0,1);
with(col){
	if(!global.bind && !inv && !other.flag){
		dmgkind = 11;
		deadkind = 82;
		pow = 8;
		direct = other.direction;
		Particle(global.SprEffect_Particle[20],x,y,abs(other.hspeed),50,50,0.98,direct,20,abs(other.hspeed/2),10,10,20,0.1,0.9,0.4);
		global.HP[global.chara] -= 10+random(10);
		sound_play(global.SndHit_02);
		sound_play(global.SndHit_16);
		step = 0;
		if(global.HP[global.chara]<=0){
			voice_play(VicNormalDmg(0));
			alarm[11] = 1;
			with(other){alarm[11] = 1};
		}
		instance_change(objDamage,false);
	}
}
