if(!flag) global.scr_dark -= 0.05;
else{
	global.scr_dark += 0.05;
	if(global.scr_dark>3) room_goto(room73_n);
}
default_x=64;
default_y=40;

if doit=true{ //If you're supposed to shake
    if factor<shake {factor+=incr;} //Increase the shake intensity till it reaches the maximum intensity
    else {factor=shake;}
}
else{
    if factor>0 {factor-=incr;} //Decrease the shake intensity till the earthquake has stopped.
    else {factor=0;}
}

if factor>0{ //If the earthquake should be shaking (intensity is larger than 0)
    __view_set( e__VW.XView, 0, default_x-factor+random(factor*2) ); //Shake horizontally
    __view_set( e__VW.YView, 0, default_y-factor+random(factor*2) ); //Shake vertically
    }
    else {__view_set( e__VW.XView, 0, default_x ) __view_set( e__VW.YView, 0, default_y )} //Fix the View.

