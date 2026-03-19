	col = collision_rectangle(x,y,x+hspd*2,y+30,objNormal,0,1);
	with(col){
		if(!inv && !global.retry){
			effect_create_above(ef_smokeup,x-40+random(40),y-40+random(40),round(random(1)),c_black);
			if(image_blend>0) image_blend -= 65793;
			sound_play(global.SndHit_20);
			dmgkind = 211;
			deadkind = 10;
			pow = 8;
			if(other.hspd) direct = 1;
			else direct = rev_angle(1);
			global.HP[global.chara] -= random(10);
			step = 0;
			if(global.HP[global.chara]<=0){sound_play(global.VicDmg_57[global.chara]);image_blend = 32;sound_play(global.SndHit_21);deadeffect = 1;alarm[11] = 1;}
			with(other){alarm[11] = 1};
			global.fdown = -100;
			instance_change(objDamage,false);
		}
	}

if(image_alpha<0){
	alarm[11] = 1;
}

image_alpha -= 0.02;
image_xscale += 0.3;
image_yscale = image_xscale

gravity = -0.48;
step += 1;
