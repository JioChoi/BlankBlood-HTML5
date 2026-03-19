action_set_relative(1);
if(step==20) instance_destroy();

col = collision_line(x,y,x+lengthdir_x(len[step]*300,image_angle),y+lengthdir_y(len[step]*300,image_angle),objNormal,0,1);
//col=0;
with(col){
	if(!other.flag && !global.bind){
		other.flag = 1;
		global.bind = 100;
		if(90<other.image_angle && other.image_angle<270) hs = -1;
		else hs = 1;
		bindkind = 9;
		global.fdown = -100;
		sound_play(global.SndHit_08);
		Particle(global.SprEffect_Particle[20],x,y,60,50,50,0.98,0,180,1,10,10,20,0.1,0.9,0.4);
		global.HP[global.chara] -= 20+random(10);
		sound_play(global.SndHit_08);
		sound_play(global.SndHit_07);
		quake(20,10);
		Flash(c_red,0.3,0.1);		
		step = 0;
		voice_play(VicNormalDmg(0));
		step = 1;
		premouse_x = mouse_x;
		premouse_y = mouse_y;
		instance_change(objBind,false);
	}
}

if(flag==1){
	len[step] += 0.1;
	global.bind = 100;
	if(image_index>3) image_speed = 0;
	else image_speed = 0.6;
	if(Percentage(1)) image_index = 0;
	with(objNormal){
		Particle(global.SprEffect_Particle[20],other.posx,other.posy,1+global.blood/5,5,5,0.98,0,180,1,global.blood/5,10,20,0.1,0.9,0.4);
		gravity = 0;
		speed = 0;
		x = other.x+lengthdir_x(other.len[other.step]*300,other.image_angle);
		y = other.y+lengthdir_y(other.len[other.step]*300,other.image_angle)+4;
		global.blood -= 0.001;
	}
	if(collision_circle(x+lengthdir_x(len[step]*300,image_angle),y+lengthdir_y(len[step]*300,image_angle),4,objBlock,0,1)){
		flag = 2;
		global.HP[global.chara]=-10;
		with(objNormal){
			deadkind = 81;
			if(global.HP[global.chara]<=0){
				Particle(global.SprEffect_Particle[20],other.posx,other.posy,40,5,5,0.98,0,180,1,5,10,20,0.1,0.9,0.4);
				voice_play(VicElectricDmg(0));
				global.bind = -100;
				sound_play(global.SndHit_07);
				sound_play(global.SndHit_08);
				sound_play(global.SndHit_15);
				quake(30,30);
				Flash(c_red,0.8,0.05);
				alarm[11] = 1;
			}
		}
	}
}else if(flag==2){
	with(objNormal){
		Particle(global.SprEffect_Particle[20],x,y,1+global.blood/5,5,5,0.98,0,180,1,global.blood/5,10,20,0.1,0.9,0.4);
		gravity = 0;
		speed = 0;
		x = other.x+lengthdir_x(other.len[other.step]*300,other.image_angle);
		y = other.y+lengthdir_y(other.len[other.step]*300,other.image_angle)+4;
		global.blood -= 0.005;
	}
	global.bind = 100;
	global.HP[global.chara] -= random(10);
}

var __b__;
__b__ = action_if_variable(flag, 0, 0);
if __b__
{
step += 1;
}
action_set_relative(0);
