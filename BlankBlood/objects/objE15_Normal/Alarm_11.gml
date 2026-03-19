action_set_relative(1);
action_effect(0, 0, 0, 1, 255, 0);
sound_play(global.SndHit_11);
score += point;
action_kill_object();
action_set_relative(0);
