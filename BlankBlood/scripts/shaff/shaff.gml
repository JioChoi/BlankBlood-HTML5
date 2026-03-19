function shaff() {
	if(Percentage(50)){
		if(num==0){
			with(global.sw01){swit = !swit;}
			return 0;
		}else if(num==1){
			with(global.sw00){swit = !swit;}
			with(global.sw02){swit = !swit;}
			return 1;
		}else if(num==2){
			with(global.sw01){swit = !swit;}
			return 2;
		}else if(num==3){
			with(global.sw04){swit = !swit;}
			return 3;
		}else if(num==4){
			with(global.sw03){swit = !swit;}
			with(global.sw05){swit = !swit;}
			return 4;
		}else if(num==5){
			with(global.sw04){swit = !swit;}
			with(global.sw06){swit = !swit;}
			return 5;
		}else if(num==6){
			with(global.sw05){swit = !swit;}
			with(global.sw07){swit = !swit;}
			return 6;
		}else if(num==7){
			with(global.sw06){swit = !swit;}
			return 7;
		}
	}else return -1;



}
