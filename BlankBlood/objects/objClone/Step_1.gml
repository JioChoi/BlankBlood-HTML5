air_check();
if(place_free(x+hspd,y)) x += hspd;

if(!air) hspd = hspd*0.5;
else hspd = hspd*0.9;

if(global.retry && !instance_exists(objCut)) global.scr_dark += 0.005;
if(global.scr_dark>2) room_goto(roomExt);
