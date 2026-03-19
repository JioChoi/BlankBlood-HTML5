var __b__;
__b__ = action_if_variable(!instance_exists(objE103_Beam), 1, 0);
if __b__
{
if(num==0){
	with(global.sw01){swit = !swit;}
}else if(num==1){
	with(global.sw00){swit = !swit;}
	with(global.sw02){swit = !swit;}
}else if(num==2){
	with(global.sw01){swit = !swit;}

}else if(num==3){
	with(global.sw04){swit = !swit;}
}else if(num==4){
	with(global.sw03){swit = !swit;}
	with(global.sw05){swit = !swit;}
}else if(num==5){
	with(global.sw04){swit = !swit;}
	with(global.sw06){swit = !swit;}
}else if(num==6){
	with(global.sw05){swit = !swit;}
	with(global.sw07){swit = !swit;}
}else if(num==7){
	with(global.sw06){swit = !swit;}
}
sound_play(global.SndSwitch_1);
}
global.assist = false;
