function Key_Check() {
	if(!global.ctrlmode){
		left	= keyboard_check(global.key[0]);
		right	= keyboard_check(global.key[1]);
		up	= keyboard_check(global.key[2]);
		down	= keyboard_check(global.key[3]);
		left	= keyboard_check(global.key[10]);
		right	= keyboard_check(global.key[11]);
		up	= keyboard_check(global.key[12]);
		down	= keyboard_check(global.key[13]);
	 	b1	= keyboard_check(global.key[4]);
		b2	= keyboard_check(global.key[5]);
		b3	= keyboard_check(global.key[6]);
		b4	= keyboard_check(global.key[7]);

		if( keyboard_check_pressed(global.key[0]) ) left	= 2;
		if( keyboard_check_pressed(global.key[1]) ) right	= 2;
		if( keyboard_check_pressed(global.key[2]) ) up	= 2;
		if( keyboard_check_pressed(global.key[3]) ) down	= 2;
		if( keyboard_check_pressed(global.key[10]) ) left	= 2;
		if( keyboard_check_pressed(global.key[11]) ) right	= 2;
		if( keyboard_check_pressed(global.key[12]) ) up	= 2;
		if( keyboard_check_pressed(global.key[13]) ) down	= 2;
	 	if( keyboard_check_pressed(global.key[4]) ) b1	= 2;
		if( keyboard_check_pressed(global.key[5]) ) b2	= 2;
		if( keyboard_check_pressed(global.key[6]) ) b3	= 2;
		if( keyboard_check_pressed(global.key[7]) ) b4	= 2;

		if( keyboard_check_released(global.key[0]) ) left	= 3;
		if( keyboard_check_released(global.key[1]) ) right	= 3;
		if( keyboard_check_released(global.key[2]) ) up	= 3;
		if( keyboard_check_released(global.key[3]) ) down	= 3;
		if( keyboard_check_released(global.key[10]) ) left	= 3;
		if( keyboard_check_released(global.key[11]) ) right	= 3;
		if( keyboard_check_released(global.key[12]) ) up	= 3;
		if( keyboard_check_released(global.key[13]) ) down	= 3; 
		if( keyboard_check_released(global.key[4]) ) b1	= 3;
		if( keyboard_check_released(global.key[5]) ) b2	= 3;
		if( keyboard_check_released(global.key[6]) ) b3	= 3;
		if( keyboard_check_released(global.key[7]) ) b4	= 3;
	}else{
		left	= global.Button[global.joypad_buttons+1];
		right	= global.Button[global.joypad_buttons+2];
		up	= global.Button[global.joypad_buttons+3];
		down	= global.Button[global.joypad_buttons+4];
	 	b1	= global.Button[global.key[14]];
		b2	= global.Button[global.key[15]];
		b3	= global.Button[global.key[16]];
		b4	= global.Button[global.key[17]];
		cc	= global.Button[global.key[18]];
		pause	= global.Button[global.key[19]];
		decide	= global.Button[global.key[20]];
	}



}
