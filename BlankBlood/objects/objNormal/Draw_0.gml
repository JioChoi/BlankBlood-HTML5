if(global.chara){
	if(global.gun_kind==1) DrawEvent2();
	else if(global.gun_kind==2) DrawEvent3();
	else DrawEvent();
}else{
	DrawEvent();
}
var __b__;
__b__ = action_if_variable(global.chara, 1, 0);
if __b__
{
with(objNormal){
	if(global.gun_kind==0) draw_sprite_ext(global.SprP_Atk_3[1],global.bullet,x,y-48,1,image_yscale,image_angle,image_blend,1);
	else if(global.gun_kind==1){
		draw_sprite_ext(global.SprP_AtkE_3[1],global.bullet,x,y-48,1,image_yscale,image_angle,image_blend,1);
		if(global.bullet2) draw_text_color(x+10,y-55,string_hash_to_newline(global.bullet2),c_white,c_white,c_white,c_white,1);
		else draw_text_color(x+10,y-55,string_hash_to_newline("0"),c_red,c_red,c_red,c_red,1);
	}else if(global.gun_kind==2) draw_sprite_ext(global.SprP_AtkE_J[1],global.bullet3,x,y-48,1,image_yscale,image_angle,image_blend,1);
}
}
move = 0;

