var __b__;
__b__ = action_if_variable(global.clone, 1, 0);
if __b__
{
with(objNormal){
	other.dis = point_distance(x,y,other.x,other.y);
}

step+=1;

}
else
{
if(sprite==global.SprP_Death_31[0]) sprite = global.SprP_Death_61[0];
else if(sprite==global.SprP_Death_31[1]) sprite = global.SprP_Death_61[1];
alarm[0] = 0;
if(image_index<4) image_speed = 0.5;
else{
image_speed = 0;
if(Percentage(5)) image_index = 0;
}
if(Percentage(10)) effect_create_below(ef_smokeup,x-10+random(20),y+random(20),0,c_white);
step += 1;
}
