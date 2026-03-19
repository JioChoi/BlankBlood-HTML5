MusicStop()
action_set_alarm(80, 0);
action_set_alarm(120, 1);
action_set_alarm(300, 2);
global.scr_dark = 1;
flag = 0;
global.SndBomb = sbomb;
/*GAMECAVE EFFECTS ENGINE 3.X
Read the GCE3X documentation before using this code!

Object Name - objEarthquake_control
Engine - Earthquake Engine 
Purpose - Controls the shaking of the screen.
*/
    doit = false; //Whether to be shaking or not
    default_x = 64; //Find what the view was originally
    default_y = 40; //Find what the view was originally
    shake = 10; //The shake intensity (maximum-pixel-shake-per-side)
    incr = 0.5; //The amount of intensity increment when the quake starts and stops.
    
    factor = 0; //Current Intensity.
/*---------------------------------------*/
/* */
/*  */
