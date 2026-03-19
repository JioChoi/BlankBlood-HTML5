function in_screen(argument0, argument1) {
	if(__view_get( e__VW.XView, 0 )<argument0 && argument0<__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) && __view_get( e__VW.YView, 0 )<argument1 && argument1<__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )) return true;
	else return false;



}
