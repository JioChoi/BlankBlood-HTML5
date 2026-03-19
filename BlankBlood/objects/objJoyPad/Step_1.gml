for(i=0;i<global.joypad_buttons;i+=1){
	isPressed[i+1] = joystick_check_button(1,i+1);
	global.Button[i+1]=isPressed[i+1];
	if (!prev_isPressed[i+1] && isPressed[i+1]) global.Button[i+1]=2;
	else if (prev_isPressed[i+1] && !isPressed[i+1]) global.Button[i+1]=3;
	prev_isPressed[i+1] = isPressed[i+1];
}

	isPressed[global.joypad_buttons+1] = (round(joystick_xpos(1))==-1);
	global.Button[global.joypad_buttons+1]=isPressed[global.joypad_buttons+1];
	if (!prev_isPressed[global.joypad_buttons+1] && isPressed[global.joypad_buttons+1]) global.Button[global.joypad_buttons+1]=2;
	else if (prev_isPressed[global.joypad_buttons+1] && !isPressed[global.joypad_buttons+1]) global.Button[global.joypad_buttons+1]=3;
	prev_isPressed[global.joypad_buttons+1] = isPressed[global.joypad_buttons+1];

	isPressed[global.joypad_buttons+2] = (round(joystick_xpos(1))==1);
	global.Button[global.joypad_buttons+2]=isPressed[global.joypad_buttons+2];
	if (!prev_isPressed[global.joypad_buttons+2] && isPressed[global.joypad_buttons+2]) global.Button[global.joypad_buttons+2]=2;
	else if (prev_isPressed[global.joypad_buttons+2] && !isPressed[global.joypad_buttons+2]) global.Button[global.joypad_buttons+2]=3;
	prev_isPressed[global.joypad_buttons+2] = isPressed[global.joypad_buttons+2];

	isPressed[global.joypad_buttons+3] = (round(joystick_ypos(1))==-1);
	global.Button[global.joypad_buttons+3]=isPressed[global.joypad_buttons+3];
	if (!prev_isPressed[global.joypad_buttons+3] && isPressed[global.joypad_buttons+3]) global.Button[global.joypad_buttons+3]=2;
	else if (prev_isPressed[global.joypad_buttons+3] && !isPressed[global.joypad_buttons+3]) global.Button[global.joypad_buttons+3]=3;
	prev_isPressed[global.joypad_buttons+3] = isPressed[global.joypad_buttons+3];

	isPressed[global.joypad_buttons+4] = (round(joystick_ypos(1))==1);
	global.Button[global.joypad_buttons+4]=isPressed[global.joypad_buttons+4];
	if (!prev_isPressed[global.joypad_buttons+4] && isPressed[global.joypad_buttons+4]) global.Button[global.joypad_buttons+4]=2;
	else if (prev_isPressed[global.joypad_buttons+4] && !isPressed[global.joypad_buttons+4]) global.Button[global.joypad_buttons+4]=3;
	prev_isPressed[global.joypad_buttons+4] = isPressed[global.joypad_buttons+4];
