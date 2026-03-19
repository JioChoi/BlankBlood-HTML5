function Particle(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10, argument11, argument12, argument13, argument14) {
	//Particle(
	//	0	sprite,
	//	1,2	x,y,
	//	3	number,
	//	4,5	x_dif,y_dif,
	//	6	gravity,
	//	7,8	min_angle,length_angle,
	//	9,10	min_speed,length_speed,
	//	11,12	min_life,length_life,
	//	13,14	min_size,length_size,
	//	15	alpha)

	var i,x_d,y_d,size,inst;
	x_d = argument4/2;
	y_d = argument5/2;

	for(i=0;i<argument3;i+=1){
		inst = instance_create(argument1-x_d+random(argument4),argument2-y_d+random(argument5),objParticle);
		inst.sprite_index = argument0;
		inst.gravity = argument6;
		inst.speed = argument9 + random(argument10);
		inst.direction = argument7 + random(argument8);
		inst.alarm[0] = 1+argument11 + random(argument12);
		size = argument13 + random(argument14)
		inst.image_xscale = size;
		inst.image_yscale = size;
		inst.image_alpha = argument15;
		inst.depth = -4+round(random(8));
		inst.image_angle = random(360);
	}



}
