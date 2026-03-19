action_set_relative(1);
if(step mod 5 == 0) effect_create_above(ef_smokeup,608-100+random(200),552-100+random(200),round(2),c_black)
if(step mod 5 == 0) effect_create_above(ef_smokeup,608-100+random(200),1302-100+random(200),round(2),c_black)
step += 1;
action_set_relative(0);
