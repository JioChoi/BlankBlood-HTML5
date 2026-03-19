var __b__;
__b__ = action_if_variable(mode, "wait", 0);
if __b__
{
if(!global.retry){
	if(HP!=preHP){
		if((Percentage(80)&&!air) || (Percentage(50)&&air)){
			HP=preHP;
			switch (round(random(2)))
			{
			case 0: sound_play(global.SndSwing_1); break;
			case 1: sound_play(global.SndSwing_2); break;
			case 2: sound_play(global.SndSwing_3); break;
			default: break;
			}
			if(pos){vspeed=-10;hspd=20;}
			else{vspeed=-10;hspd=-20;}

			image_index = 0;
			y -= 2;
			motion = 5;
			step = 0;
			mode = "attack";
		}
	}

	if(Percentage(2)) if(!air) vspeed = -20;
	with(objNormal){

		if(!air){
			with(other){
				if(!air && y>other.y+64) vspeed = -20;
			}
		}
	}

	if(300>dis && dis>30){
		move = 1;
		if(pos){
			dir = 1;
			dash = 1;
			hspd = 8;
		}else{
			dir = 0;
			dash = 1;
			hspd = -8;
		}
	}else if(dis>=300){
		move = 1;
		if(pos){
			dir = 1;
			hspd = 4;
		}else{
			dir = 0;
			hspd = -4;
		}
	}else{
		if(pos){dir=1;hspd=10;}
		else{dir=0;hspd=-10;}

		image_index = 0;
		if(!air){
			if(dash) motion = 6;
			else motion = 1+round(random(3));
		}else motion = 5;
		step = 0;
		mode = "attack";
	}
}
}
__b__ = action_if_variable(mode, "attack", 0);
if __b__
{
{
	if(HP!=preHP){
		if(Percentage(50)){
			HP=preHP;
			switch (round(random(2)))
			{
			case 0: sound_play(global.SndSwing_1); break;
			case 1: sound_play(global.SndSwing_2); break;
			case 2: sound_play(global.SndSwing_3); break;
			default: break;
			}
			if(pos){vspeed=-10;hspd=20;}
			else{vspeed=-10;hspd=-20;}

			image_index = 0;
			y -= 2;
			motion = 5;
			step = 0;
			mode = "attack";
		}
	}

	if(step==1 && !global.clone) alarm[11] = 1;
	if(step==3){
		col = collision_rectangle(x,y-10,x-40+(80*dir),y+10,objNormal,0,1);
		with(col){
			if(!inv){
				dmgkind = 11;
				deadkind = 10;
				cutkind = 1;
				pow = 4;
				if(other.dir) direct = 10;
				else direct = rev_angle(10);
				Particle(global.SprEffect_Particle[20],x,y,30,50,50,0.98,0,180,5,10,10,20,0.1,0.9,0.4);
				global.HP[global.chara] -= 25+random(10);
				sound_play(global.SndHit_01);

				step = 0;
				if(global.HP[global.chara]<=0){
					sound_play(global.SndHit_16);
					alarm[11] = 1;
				}
				instance_change(objDamage,false);
			}
		}
	}

	switch (motion)
	{
	case 1:
		if(step == 3){
			switch (round(random(2)))
			{
			case 0: sound_play(global.SndSwing_1); break;
			case 1: sound_play(global.SndSwing_2); break;
			case 2: sound_play(global.SndSwing_3); break;
			default: break;
			}
		}

		if(5<step && step<14 && Percentage(10)){
			image_index = 0;
			motion = 2;
			step = 0;
			mode = "attack";
		}
		if(step>14){
			step = 0;
			mode = "wait"
		}
		break;
	case 2:
		if(step == 3){
			switch (round(random(2)))
			{
			case 0: sound_play(global.SndSwing_1); break;
			case 1: sound_play(global.SndSwing_2); break;
			case 2: sound_play(global.SndSwing_3); break;
			default: break;
			}
		}

		if(5<step && step<14 && Percentage(10)){
			image_index = 0;
			motion = 3;
			step = 0;
			mode = "attack";
		}
		if(step>14){
			step = 0;
			mode = "wait"
		}
		break;
	case 3:
		if(step == 3){
			switch (round(random(2)))
			{
			case 0: sound_play(global.SndSwing_1); break;
			case 1: sound_play(global.SndSwing_2); break;
			case 2: sound_play(global.SndSwing_3); break;
			default: break;
			}
		}

		if(5<step && step<14 && Percentage(10)){
			image_index = 0;
			motion = 4;
			step = 0;
			mode = "attack";
		}
		if(step>14){
			step = 0;
			mode = "wait"
		}
		break;
	case 4:
		if(step == 3){
			switch (round(random(2)))
			{
			case 0: sound_play(global.SndSwing_1); break;
			case 1: sound_play(global.SndSwing_2); break;
			case 2: sound_play(global.SndSwing_3); break;
			default: break;
			}
		}

		if(step>14){
			step = 0;
			mode = "wait"
		}
		break;
	case 5:
		if(step == 3){
			switch (round(random(2)))
			{
			case 0: sound_play(global.SndSwing_1); break;
			case 1: sound_play(global.SndSwing_2); break;
			case 2: sound_play(global.SndSwing_3); break;
			default: break;
			}
		}

		if(step>14 || !air){
			step = 0;
			mode = "wait"
		}
		break;
	case 6:
		if(step == 3){
			switch (round(random(2)))
			{
			case 0: sound_play(global.SndSwing_1); break;
			case 1: sound_play(global.SndSwing_2); break;
			case 2: sound_play(global.SndSwing_3); break;
			default: break;
			}
		}
		if(step<6){
			if(dir) x += (20-step*2)*image_xscale;
			else x -= (20-step*2)*image_xscale;	
		}

		if(step>14){
			step = 0;
			mode = "wait"
		}
		break;
	default: break;
	}
	step+=1;
}

}
__b__ = action_if_variable(mode, "damage", 0);
if __b__
{
{
	if(step==0)voice_play2(VicNormalDmg(0),0);
	if(step>12){
		step = 0;
		mode = "wait"
	}
	step+=1;
}

}
image_blend = color;
if(HP!=preHP){
	image_blend = c_red;
	sound_atk(1);
	if(Percentage(100)){
		image_index = 0;
		motion = 11+10*round(random(1));
		step = 0;
		mode = "damage";
	}
}
preHP = HP;
action_inherited();
