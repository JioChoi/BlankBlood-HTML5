air_check();
if(place_free(x+hspd,y)) x += hspd;

if(!air) hspd = hspd*0.5;
else hspd = hspd*0.9;

image_blend = c_white;
if(HP!=preHP) image_blend = c_red;
preHP = HP;

if(bind) global.assist = id;
