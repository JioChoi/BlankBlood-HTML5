{
    if(crouch && !air && !move){
        crouch=1;
        mask_index = sprMask03;
    }else{
        crouch=0;
        mask_index = sprMask02;
    }

    Key_Control();
    air_checkChara();

    if(air){
        hspeed = hspeed*0.95;

        if(vspeed>0){
            gravity = global.g;
            gravity_direction = 270;
        }else{
            if(!up && !b2){
                gravity = global.g*1.9;
                gravity_direction = 270;
            }else{
                gravity = global.g;
                gravity_direction = 270;
            }
        }
    }else{
        hspeed = hspeed*0.5;

        jump = true;
        gravity = 0;
        gravity_direction = 0;
    }
}

