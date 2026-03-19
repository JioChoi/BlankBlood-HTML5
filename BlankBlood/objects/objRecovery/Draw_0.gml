draw_sprite_ext(global.SprEffect_Save_01,-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
action_color(16777215);
var __b__;
__b__ = action_if_variable(mode, 1, 0);
if __b__
{
action_draw_text("Press Enter-Key ... Recovery", __view_get( e__VW.XView, 0 )+206, __view_get( e__VW.YView, 0 )+167);
}
mode = 0;
