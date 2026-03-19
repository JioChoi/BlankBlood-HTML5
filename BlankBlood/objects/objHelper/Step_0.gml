var __b__;
__b__ = action_if_variable(global.assist, 0, 1);
if __b__
{
{
with(objNormal){
	other.dis = distance_to_object(other);
	if(x>other.x) other.pos = 1;
	else other.pos = 0;
}
if(dir) gun_dir = 0;
else gun_dir = 180;
air_check();
if(place_free(x+hspd,y)) x += hspd;

if(!air) hspd = hspd*0.5;
else hspd = hspd*0.9;
	air_check();
	if(air){
		gravity = global.g;
		gravity_direction = 270;
	}else{
		gravity = 0;
		gravity_direction = 0;
	}
__b__ = action_if_variable(mode, "wait", 0);
if __b__
{
if(!global.retry){
	if(!place_free(x+hspd*15,y)) if(!air) vspeed = -20;
	with(objNormal){
		if(!air){
			with(other){
				if(!air && y>other.y+64) vspeed = -20;
			}
		}else if(y<other.y-100){
			with(other){
				if(!air) vspeed = -20;
			}
		}

		if(other.vspeed>3 && y<other.y-16){
			with(other){
				effect_create_below(ef_ellipse,x,y+48,0,c_blue);
				effect_create_below(ef_ellipse,x,y+48,0,c_white);
				effect_create_below(ef_ellipse,x,y+48,0,c_white);
				vspeed = -20;
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
	}
}

}
__b__ = action_if_variable(global.chara, 0, 0);
if __b__
{
{
__b__ = action_if_variable(mode, "attack", 0);
if __b__
{
{
	var inst;
	switch (motion)
	{
	case 1:
		if(300>dis && dis>120){
			move = 1;
			if(pos){
				dir = 1;
				dash = 1;
				hspd = 6;
			}else{
				dir = 0;
				dash = 1;
				hspd = -6;
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
		}else if(dis<100){
			move = 1;
			if(!pos){
				dir = 1;
				dash = 1;
				hspd = 9;
			}else{
				dir = 0;
				dash = 1;
				hspd = -9;
			}
		}

		if(step == 0){
			global.bullet -= 1;
			inst = instance_create(x,y,objN_BulletH);
			inst.direction = gun_dir;
			inst.alarm[0] = 1;
			sound_play(global.SndShot_1);
			inst = instance_create(x,y,objN_Case);
			inst.kind = 1;
		}
		gun_index += 1;
		if(gun_index>10){
			if(global.bullet) gun_index = 0;
			else gun_index = 11;

			step = 0;
			mode = "wait"
		}
	break;
	case 2:
		global.bullet = 8;
		if(step == 12){
			if(dir) inst = instance_create(x+20,y,objN_Case);
			else inst = instance_create(x-20,y,objN_Case);
			inst.kind = 2;
		}else if(step == 20){
			sound_play(global.SndReload_1);
		}else if(45<step){
			sound_play(global.SndReload_2);
			if(global.bullet)gun_index = 0;
			else gun_index = 11;
			step = 0;
			mode = "wait"
		}
	break;
	default: break;
	}
	step+=1;
}

}
}
}
else
{
{
__b__ = action_if_variable(mode, "attack", 0);
if __b__
{
{
	if(step==3){
		var col,col2;
		if(!dir){
			col = collision_rectangle(x,y,x-45,y+20,objEnemy,0,1);
			col2 = collision_rectangle(x,y,x-45,y+20,objBreakBlock,0,1);
			with(col){
				hspd = -100/weight;
				HP -= 2+random(5);
				if(HP<=0){
					alarm[11] = 2;
					if(bind && !global.retry) global.bind = -100;
				}
				sound_play(global.SndHit_00);
				sound_atk(kind);
			}
		}else{
			col = collision_rectangle(x,y,x+45,y+20,objEnemy,0,1);
			col2 = collision_rectangle(x,y,x+45,y+20,objBreakBlock,0,1);
			with(col){
				hspd = 100/weight;
				HP -= 2+random(5);
				if(HP<=0){
					alarm[11] = 2;
					if(bind && !global.retry) global.bind = -100;
				}
				sound_play(global.SndHit_00);
				sound_atk(kind);
			}
		}
		with(col2){
			HP -= 30+random(10);
			if(HP<=0) alarm[11] = 1;
			sound_play(global.SndHit_00);
			sound_atk(kind);
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
}
}
}
}
else
{
{
with(global.assist){
	other.dis = distance_to_object(other);
	if(x>other.x) other.pos = 1;
	else other.pos = 0;

	other.gun_dir = point_direction(other.x,other.y,x,y);
}
air_check();
if(place_free(x+hspd,y)) x += hspd;

if(!air) hspd = hspd*0.5;
else hspd = hspd*0.9;
	air_check();
	if(air){
		gravity = global.g;
		gravity_direction = 270;
	}else{
		gravity = 0;
		gravity_direction = 0;
	}
__b__ = action_if_variable(global.chara, 0, 0);
if __b__
{
{
__b__ = action_if_variable(mode, "wait", 0);
if __b__
{
{
if(!global.retry){
	if(!place_free(x+hspd*15,y)) if(!air) vspeed = -20;
	with(objNormal){
		with(other){
			if(dis > 600 || place_meeting(x,y,objBlock)){
				x=other.x;y=other.y;
				effect_create_below(ef_ring,x,y,0,c_lime);
			}
		}
	}
	with(global.assist){
		if(!air){
			with(other){
				if(!air && y>other.y+64) vspeed = -20;
			}
		}else if(y<other.y-100){
			with(other){
				if(!air) vspeed = -20;
			}
		}

		if(other.vspeed>3 && y<other.y-16){
			with(other){
				effect_create_below(ef_ellipse,x,y+48,0,c_blue);
				effect_create_below(ef_ellipse,x,y+48,0,c_white);
				effect_create_below(ef_ellipse,x,y+48,0,c_white);
				vspeed = -20;
			}
		}
	}

	if(300>dis && dis>120){
		move = 1;
		if(global.bullet){
			if(pos){
				dir = 1;
				dash = 1;
				hspd = 6;
			}else{
				dir = 0;
				dash = 1;
				hspd = -6;
			}
		}else{
			if(!pos){
				dir = 1;
				dash = 1;
				hspd = 6;
			}else{
				dir = 0;
				dash = 1;
				hspd = -6;
			}
			if(Percentage(5)){
				motion = 2;
				step = 0;
				mode = "attack";
			}
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
		if(gun_index == 11){
			motion = 2;
			step = 0;
			mode = "attack";
		}
	}else if(dis<100){
		move = 1;
		if(!pos){
			dir = 1;
			dash = 1;
			hspd = 8;
		}else{
			dir = 0;
			dash = 1;
			hspd = -8;
		}

		if(gun_index == 0 || gun_index == 11 && Percentage(5)){
			if(global.bullet) motion = 1;
			else motion = 2;
			step = 0;
			mode = "attack";
		}
	}else{
		if(gun_index == 0 || gun_index == 11 && Percentage(10)){
			if(global.bullet) motion = 1;
			else motion = 2;
			step = 0;
			mode = "attack";
		}
	}
}
if(!instance_exists(global.assist) || dis>300) global.assist = -1;
}
}
__b__ = action_if_variable(mode, "attack", 0);
if __b__
{
{
	var inst;
	switch (motion)
	{
	case 1:
		if(300>dis && dis>120){
			move = 1;
			if(pos){
				dir = 1;
				dash = 1;
				hspd = 6;
			}else{
				dir = 0;
				dash = 1;
				hspd = -6;
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
		}else if(dis<100){
			move = 1;
			if(!pos){
				dir = 1;
				dash = 1;
				hspd = 9;
			}else{
				dir = 0;
				dash = 1;
				hspd = -9;
			}
		}

		if(step == 0){
			global.bullet -= 1;
			inst = instance_create(x,y,objN_BulletH);
			inst.direction = gun_dir;
			inst.alarm[0] = 1;
			sound_play(global.SndShot_1);
			inst = instance_create(x,y,objN_Case);
			inst.kind = 1;
		}
		gun_index += 1;
		if(gun_index>10){
			if(global.bullet) gun_index = 0;
			else gun_index = 11;

			step = 0;
			mode = "wait"
		}
	break;
	case 2:
		global.bullet = 8;
		if(step == 12){
			if(dir) inst = instance_create(x+20,y,objN_Case);
			else inst = instance_create(x-20,y,objN_Case);
			inst.kind = 2;
		}else if(step == 20){
			sound_play(global.SndReload_1);
		}else if(45<step){
			sound_play(global.SndReload_2);
			if(global.bullet)gun_index = 0;
			else gun_index = 11;
			step = 0;
			mode = "wait"
		}
	break;
	default: break;
	}

	step+=1;
}

}
}
}
else
{
{
__b__ = action_if_variable(mode, "wait", 0);
if __b__
{
{
if(!global.retry){
	if(!place_free(x+hspd*15,y)) if(!air) vspeed = -20;
	with(objNormal){
		with(other){
			if(dis > 600 || place_meeting(x,y,objBlock)){
				x=other.x;y=other.y;
				effect_create_below(ef_ring,x,y,0,c_lime);
			}
		}
	}
	with(global.assist){
		if(!air){
			with(other){
				if(!air && y>other.y+64) vspeed = -20;
			}
		}else if(y<other.y){
			with(other){
				if(!air) vspeed = -20;
			}
		}

		if(other.vspeed>3 && y<other.y-16){
			with(other){
				effect_create_below(ef_ellipse,x,y+48,0,c_blue);
				effect_create_below(ef_ellipse,x,y+48,0,c_white);
				effect_create_below(ef_ellipse,x,y+48,0,c_white);
				vspeed = -20;
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
if(!instance_exists(global.assist) || dis>300) global.assist = -1;
}
}
__b__ = action_if_variable(mode, "attack", 0);
if __b__
{
{
	if(step==3){
		var col,col2;
		if(!dir){
			col = collision_rectangle(x,y,x-45,y+20,objEnemy,0,1);
			col2 = collision_rectangle(x,y,x-45,y+20,objBreakBlock,0,1);
			with(col){
				hspd = -100/weight;
				HP -= 2+random(5);
				if(HP<=0){
					alarm[11] = 2;
					if(bind && !global.retry) global.bind = -100;
				}
				sound_play(global.SndHit_00);
				sound_atk(kind);
			}
		}else{
			col = collision_rectangle(x,y,x+45,y+20,objEnemy,0,1);
			col2 = collision_rectangle(x,y,x+45,y+20,objBreakBlock,0,1);
			with(col){
				hspd = 100/weight;
				HP -= 2+random(5);
				if(HP<=0){
					alarm[11] = 2;
					if(bind && !global.retry) global.bind = -100;
				}
				sound_play(global.SndHit_00);
				sound_atk(kind);
			}
		}
		with(col2){
			HP -= 30+random(10);
			if(HP<=0){
				alarm[11] = 1;
			}
			sound_play(global.SndHit_00);
			sound_atk(kind);
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
}
}
}
}
