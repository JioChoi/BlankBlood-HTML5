var __b__;
__b__ = action_if_variable(global.clone, 1, 0);
if __b__
{
with(objNormal){
	other.dis = point_distance(x,y,other.x,other.y);
}
if(dis<300 && !flag){
	if(global.bgm_kind != 103){
		bGM_stop(global.bgm);
		bGM_close(global.bgm);
		global.bgm = bGM_play(boss03,global.volume,1,0,1);
		global.bgm_kind = 103;
	}
	flag = true;
	alarm[0] = 80;
}
if(image_index == 18){
	Flash(c_white,0.4,0.1);
	sound_play(global.SndHit_10);
	instance_destroy();
	instance_create(x,y,object);
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
step += 1;
}
