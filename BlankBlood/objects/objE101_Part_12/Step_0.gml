image_xscale = 1.05+0.05*sin(step/16);
if(HP<210) HP += random(0.9);

if(HP>152){
	if(place_meeting(x,y,objNormal)){
		with(objNormal){hspeed = 10;}
	}
}

if(collision_rectangle(x-64,y,x-96,y+64,objNormal,0,1)){
	with(objNormal){
		hspeed=-40;
		gravity=0;
	}

	if(step==0) {step = 1;fl = Flash(c_black,0,-0.2);}
}

if(step) step += 1;
if(step>20) with(fl){minus = 0.2};
if(step == 30){
	with(objE101_Obj08){instance_destroy()};
	with(objNormal){x=608;y=740;hspeed=-5;vspeed=-10;Particle(global.SprEffect_Particle[21],x,y,50,50,50,0.98,60,180,15,10,10,20,0.1,1,0.6);};
	step = 0;
	flag = 0;
	flag2 = 0;
	with(fl){instance_destroy()};
	fl =0;
}
