/*GAMECAVE EFFECTS ENGINE 3.X
Read the GCE3X documentation before using this code!

Object Name - objEarthquake_control
Engine - Earthquake Engine 
Purpose - Controls the shaking of the screen.
*/
    doit = false; //Whether to be shaking or not
    default_x = __view_get( e__VW.XView, 0 ); //Find what the view was originally
    default_y = __view_get( e__VW.YView, 0 ); //Find what the view was originally
    shake = 10; //The shake intensity (maximum-pixel-shake-per-side)
    incr = 0.5; //The amount of intensity increment when the quake starts and stops.
    
    factor = 0; //Current Intensity.
/*---------------------------------------*/

alarm[1] = 2;
/* */
/*  */
MusicPlay();