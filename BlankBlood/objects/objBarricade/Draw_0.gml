if(!flag){
draw_sprite_ext(sprCaution,image_index/10,__view_get( e__VW.XView, 0 )+32,y-64,1,image_yscale,image_angle,c_white ,image_alpha);
}else{
switch(bomb){
case 0 : draw_sprite_ext(sprDrum,0,x,y,1,1,image_angle,image_blend,image_alpha);break;
case 1 : draw_sprite_ext(sprDrum,1,x,y,1,1,image_angle,image_blend,image_alpha);break;
}
}

