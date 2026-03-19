action_set_relative(1);
image_yscale = 1.05+0.05*sin(step/16);

if(!global.bind){
	col = collision_line(x+14*32,y-32*6-2,x+23*32,y-32*6-2,objNormal,0,1);
	with(col){x -= random(3)};
}
step += 1;
action_set_relative(0);
