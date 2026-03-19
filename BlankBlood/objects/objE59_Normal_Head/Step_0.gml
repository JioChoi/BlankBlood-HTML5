col = collision_rectangle(x-1,y,x+1,y-2,objNormal,0,1);
if(col){
	with(col){
		if(!inv && dash){
				other.flag = true;
				dmgkind = 11;
				deadkind = 10;
				cutkind = 1;
				pow = (-1+dir*2)*30;
				if(dir) direct = 40;
				else direct = rev_angle(40);
				Particle(global.SprEffect_Particle[20],x,y,30,50,50,0.98,0,180,5,10,10,20,0.1,0.9,0.4);
				global.HP[global.chara] = 0;
				sound_play(global.SndHit_00);

				step = 0;
				if(global.HP[global.chara]<=0){
					alarm[11] = 1;
				}
				instance_change(objDamage,false);
		}
	}
}
