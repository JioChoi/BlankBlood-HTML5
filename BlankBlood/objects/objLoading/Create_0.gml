global.save_var = 6767;
global.joypad = joystick_exists(1);
if(global.joypad) instance_create(x,y,objJoyPad);
else global.ctrlmode = 0;

