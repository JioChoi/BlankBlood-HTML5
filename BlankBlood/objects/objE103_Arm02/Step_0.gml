action_set_relative(1);
if(step==20) instance_destroy();

col = collision_line(x,y,x+lengthdir_x(len[step]*300,image_angle),y+lengthdir_y(len[step]*300,image_angle),objNormal,0,1);
//col=0;
with(col){
	if(!global.bind){
		depth = 1;
		with(objNormal){
			other.image_angle = point_direction(other.x,other.y,x,y);
		}
	}
	if(!other.flag){
		other.posx = x;
		other.posy = y;
		other.flag = true;
		other.len[other.step] += random(0.2);
		global.bind = 100;
		bindkind = 5;
		global.fdown = -100;
		sound_play(global.SndHit_08);

		dmgkind = 21;
		deadkind = 81;
		cutkind = 0;
		pow = 5;
		direct = other.image_angle;
		Particle(global.SprEffect_Particle[20],x,y,60,50,50,0.98,0,180,1,10,10,20,0.1,0.9,0.4);
		global.HP[global.chara] -= 20+random(10);
		sound_play(global.SndHit_08);
		if(Percentage(10)) sound_play(global.SndHit_07);
		if(Percentage(10)) sound_play(global.SndHit_15);
		quake(20,10);
		Flash(c_red,0.3,0.1);
		
		step = 0;
		if(global.HP[global.chara]<=0){
			if(global.HP[global.chara]>-100) voice_play(VicElectricDmg(0));
			global.bind = -100;
			sound_play(global.SndHit_07);
			if(Percentage(10)) sound_play(global.SndHit_08);
			if(Percentage(10)) sound_play(global.SndHit_15);
			quake(20,10);
			Flash(c_red,0.3,0.1);
			alarm[11] = 1;
		}else voice_play(VicNormalDmg(0));
		step = 1;
		premouse_x = mouse_x;
		premouse_y = mouse_y;
		instance_change(objBind,false);
	}
}

if(flag){
	global.bind = 100;
	if(instance_number(objE103_Arm02)<5){
		if(Percentage(10)) with(objNormal){instance_create(x-150+random(300),other.y,objE103_Arm02)}
	}else if(instance_number(objE103_Arm02)<20){
		if(Percentage(1)) with(objNormal){instance_create(x-150+random(300),other.y,objE103_Arm02)}
	}
	if(image_index>3) image_speed = 0;
	else image_speed = 0.6;
	if(Percentage(1)) image_index = 0;
	with(objNormal){
		Particle(global.SprEffect_Particle[20],other.posx,other.posy,1+global.blood/10,5,5,0.98,0,180,1,global.blood/5,10,20,0.1,0.9,0.4);
		gravity = 0;
		speed = 0;
		x = other.posx;
		y = other.posy;
		global.blood -= 0.001;
	}
}

var __b__;
__b__ = action_if_variable(flag, 0, 0);
if __b__
{
step += 1;
}
action_set_relative(0);
