action_set_relative(1);
image_yscale = 1.01+0.01*sin(step/18);

left += random(0.5);
right += random(0.5);
if(left>160) left = 160;
if(right>160) right = 160;

left_index += random(0.5);
right_index += random(0.5);

if(left==160 && right==160){
	with(objNormal){
		if(!global.bind && !inv && !global.retry){
			global.bind = 100;
			bindkind = 1;
			deadkind = 41;
			cutkind = 0;
			sound_play(global.SndHit_08);

			step = 0;
			premouse_x = mouse_x;
			premouse_y = mouse_y;
			instance_change(objBind,false);
		}
	}

	if(global.bind){
		global.bind += 4;
		if(global.bind>100) global.bind = 100;

		with(objNormal){
			x = 480;
			y += random(1);
			if(Percentage(5)) image_index = 0;
		}
	}else{
		if(global.HP[global.chara]>0){
			quake(20,25);

			left = 50;
			right = 50;
		}
	}
}else{
	if(collision_rectangle(x,y,x+left,y+672,objNormal,0,1)){
		with(objNormal){x=other.x+other.left+26;};
	}
	if(collision_rectangle(x+320,y,x+320-right,y+672,objNormal,0,1)){
		with(objNormal){x=other.x+320-other.right-26;};
	}
}

step += 1;
action_set_relative(0);
