len[00] = 0;
len[01] = 0.01;
len[02] = 0.02;
len[03] = 0.04;
len[04] = 0.1;
len[05] = 0.4;
len[06] = 1;
len[07] = 1.1;
len[08] = 1.2;
len[09] = 1.25;
len[10] = 1.26;
len[11] = 1.27;
len[12] = 1.25;
len[13] = 1;
len[14] = 0.7;
len[15] = 0.4;
len[16] = 0.1;
len[17] = 0.05;
len[18] = 0.02;
len[19] = 0.01;
len[20] = 0;
len[21] = 0;
posx = 0;
posy = 0;
flag = false;
image_speed = 0.5;
if(global.bind){
	depth = -2+random(3);
	with(objNormal){
		other.image_angle = point_direction(other.x,other.y,x,y-15+random(30));
	}
}else{
	depth = 1;
	with(objNormal){
		other.image_angle = point_direction(other.x,other.y,x,y);
	}
}
step = 0;
step2 = 0;
