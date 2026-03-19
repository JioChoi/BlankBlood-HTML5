global.joypad_buttons = joystick_buttons(1);
for(i=0;i<global.joypad_buttons+4;i+=1){
	isPressed[i+1] = 0;
	prev_isPressed[i+1] = 0;
	global.Button[i+1] = 0;
}
