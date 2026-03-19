{
	// �Ȃ߂炩�ȃZ���^�����O
	new_view_xview = min(max(0, (objNormal.x+10) - __view_get( e__VW.WView, 0 )/2), room_width - __view_get( e__VW.WView, 0 ));
	__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + ((new_view_xview - __view_get( e__VW.XView, 0 )) / 6) );
	
	new_view_yview = min(max(0, (objNormal.y+20) - __view_get( e__VW.WView, 0 )/2), room_width - __view_get( e__VW.WView, 0 ));
	__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + ((new_view_yview - __view_get( e__VW.YView, 0 )) / 6) );

	with(objE103_Last){
		if(__view_get( e__VW.XView, 0 )>room_width-amount+440-__view_get( e__VW.WView, 0 )){
			__view_set( e__VW.XView, 0, room_width-amount+440-__view_get( e__VW.WView, 0 ) );
		}
	}

	if(__view_get( e__VW.XView, 0 )<0)							__view_set( e__VW.XView, 0, 0 );
	if(__view_get( e__VW.XView, 0 )>room_width -__view_get( e__VW.WView, 0 ))	__view_set( e__VW.XView, 0, room_width -__view_get( e__VW.WView, 0 ) );
	if(__view_get( e__VW.YView, 0 )<0)							__view_set( e__VW.YView, 0, 0 );
	if(__view_get( e__VW.YView, 0 )>room_height-__view_get( e__VW.HView, 0 )) __view_set( e__VW.YView, 0, room_height-__view_get( e__VW.HView, 0 ) );
}

default_x=__view_get( e__VW.XView, 0 );
default_y=__view_get( e__VW.YView, 0 );

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

if(global.debug){
	global.HP[0] = global.HPMAX[0];
	global.HP[1] = global.HPMAX[1];
	global.weapon = 100;
}

if(keyboard_check_pressed(vk_backspace) && !instance_exists(objE0a_Open) && !instance_exists(objOpenMsg)) instance_create(x,y,objPause);
if(global.ctrlmode) if(global.Button[global.key[19]]==2 && !instance_exists(objE0a_Open) && !instance_exists(objOpenMsg)) instance_create(x,y,objPause);

/*
with(objNormal){
                if(global.debug){
                                 var dir_1; dir_1 = point_direction(x,y,mouse_x,mouse_y);
                                 motion_add(dir_1,2);
                 }
}
*/

/* */
/*  */
