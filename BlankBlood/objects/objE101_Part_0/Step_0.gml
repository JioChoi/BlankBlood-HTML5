action_set_relative(1);
image_angle = 3*sin(step/15);
with(objE101_Core){
	x=other.x+576+90*cos(degtorad(other.image_angle+135));
	y=other.y-260-90*sin(degtorad(other.image_angle+135));
}
step += 1;
action_set_relative(0);
