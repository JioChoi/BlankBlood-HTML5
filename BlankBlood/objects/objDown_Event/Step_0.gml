	col = collision_rectangle(x,y,x+32,y+96,objNormal,0,1);
		with(col){
			if(!inv && !global.bind && !global.fdown){
				dmgkind = 11;
				deadkind = 10;
				downkind = 10;
				pow = 8;
				direct = 0;
				sound_play(global.SndHit_02);

				step = 0;
				inv = 1;
				global.bind = -100;
				global.fdown = 30000000;
				image_alpha = 1;
				dashKey = 0;
				dash = false;
				crouch = false;
				cutkind = 0;
				speed = pow;
				direction = direct;

				instance_change(objDown,false);

				if(Percentage(40)) sound_play(global.SndHit_23);
				else if(Percentage(40)) sound_play(global.SndHit_24);
				else{sound_play(global.SndHit_23);sound_play(global.SndHit_24);}
				quake(30,30);
				Flash(c_white,0.8,0.05);
				voice_play(VicElectricDmg(0));
			}
		}

