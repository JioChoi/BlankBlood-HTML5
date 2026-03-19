{
	if(AtkZone && use){
		step = 0;
		with(objNormal){
			if(Percentage(30) && other.y<y){
				with(other){
					Particle(global.SprEffect_Particle[0],x,y-96,30,50,50,0.98,180,180,5,10,10,20,0.5,0.5,1);
					quake(5,5);
					sound_play(global.SndHit_17);
					instance_change(objE16_Atk_1,false)
				}
			}
		}
	}
}
