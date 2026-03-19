action_color(16777215);
action_draw_variable(text, 0, 0);
var __b__;
__b__ = action_if_variable(global.joypad, 1, 0);
if __b__
{
action_draw_text("joypad..connected", 0, 20);
}
