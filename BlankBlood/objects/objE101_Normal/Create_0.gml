{
global.BossHP = 10000;
global.SprEBoss_Part[0] = 0;
global.SprEBoss_Part[1] = 0;
global.SprEBoss_Part[2] = 0;
global.SprEBoss_Part[3] = 0;
global.SprEBoss_Part[4] = 0;
global.SprEBoss_Part[5] = 0;
global.SprEBoss_Part[6] = 0;
global.SprEBoss_Part[7] = 0;
global.SprEBoss_Part[8] = 0;
global.SprEBoss_Part[9] = 0;
global.SprEBoss_Part[10] = 0;
global.SprEBoss_Part[11] = 0;
global.SprEBoss_Part[12] = 0;
global.SprEBoss_Part[13] = 0;

global.SprEBoss_Atk1_Part[0] = 0;
global.SprEBoss_Atk1_Part[1] = 0;
global.SprEBoss_Atk1_Part[2] = 0;
global.SprEBoss_Atk1_Part[3] = 0;
global.SprEBoss_Atk1_Part[4] = 0;
global.SprEBoss_Atk1_Part[5] = 0;
global.SprEBoss_Atk1_Part[6] = 0;
global.SprEBoss_Atk1_Part[7] = 0;
global.SprEBoss_Atk1_Part[8] = 0;
global.SprEBoss_Atk1_Part[9] = 0;
global.SprEBoss_Atk1_Part[10] = 0;
global.SprEBoss_Atk1_Part[11] = 0;
global.SprEBoss_Atk1_Part[12] = 0;
global.SprEBoss_Atk1_Part[13] = 0;

global.SprEBoss_Atk2_Part[0] = 0;
global.SprEBoss_Atk2_Part[1] = 0;
global.SprEBoss_Atk2_Part[2] = 0;
global.SprEBoss_Atk2_Part[3] = 0;
global.SprEBoss_Atk2_Part[4] = 0;
global.SprEBoss_Atk2_Part[5] = 0;
global.SprEBoss_Atk2_Part[6] = 0;
global.SprEBoss_Atk2_Part[7] = 0;
global.SprEBoss_Atk2_Part[8] = 0;
global.SprEBoss_Atk2_Part[9] = 0;
global.SprEBoss_Atk2_Part[10] = 0;
global.SprEBoss_Atk2_Part[11] = 0;
global.SprEBoss_Atk2_Part[12] = 0;
global.SprEBoss_Atk2_Part[13] = 0;

global.SprEBoss_Atk3_Part[0] = 0;
global.SprEBoss_Atk3_Part[1] = 0;
global.SprEBoss_Atk3_Part[2] = 0;
global.SprEBoss_Atk3_Part[3] = 0;
global.SprEBoss_Atk3_Part[4] = 0;
global.SprEBoss_Atk3_Part[5] = 0;
global.SprEBoss_Atk3_Part[6] = 0;
global.SprEBoss_Atk3_Part[7] = 0;
global.SprEBoss_Atk3_Part[8] = 0;
global.SprEBoss_Atk3_Part[9] = 0;
global.SprEBoss_Atk3_Part[10] = 0;
global.SprEBoss_Atk3_Part[11] = 0;
global.SprEBoss_Atk3_Part[12] = 0;
global.SprEBoss_Atk3_Part[13] = 0;
global.SprEBoss_Bullet[0] = 0;
global.SndBoss[0] = 0;
global.SndBoss[1] = 0;
global.SndBoss[2] = 0;

msg = "Loading...";
//screen_redraw();
global.BossHP = 2000;
global.SprEBoss_Part[0] = sprite_add("Chara/Enemy/101/Part_0.gif",0,1,0,75,87);
global.SprEBoss_Part[1] = sprite_add("Chara/Enemy/101/Part_1.gif",0,1,0,0,191);
global.SprEBoss_Part[2] = sprite_add("Chara/Enemy/101/Part_2.gif",0,1,0,0,127);
global.SprEBoss_Part[3] = sprite_add("Chara/Enemy/101/Part_3.gif",0,1,0,143,289);
global.SprEBoss_Part[4] = sprite_add("Chara/Enemy/101/Part_4.gif",0,1,0,85,20);
global.SprEBoss_Part[5] = sprite_add("Chara/Enemy/101/Part_5.gif",0,1,0,0,139);
global.SprEBoss_Part[6] = sprite_add("Chara/Enemy/101/Part_6.gif",0,1,0,0,0);
global.SprEBoss_Part[7] = sprite_add("Chara/Enemy/101/Part_7.gif",0,1,0,16,0);
global.SprEBoss_Part[8] = sprite_add("Chara/Enemy/101/Part_8.gif",0,1,0,317,27);
global.SprEBoss_Part[9] = sprite_add("Chara/Enemy/101/Part_9.gif",0,1,0,0,80);
global.SprEBoss_Part[10] = sprite_add("Chara/Enemy/101/Part_10.gif",0,1,0,16,32);
global.SprEBoss_Part[11] = sprite_add("Chara/Enemy/101/Part_11.gif",0,1,0,24,300);
global.SprEBoss_Part[12] = sprite_add("Chara/Enemy/101/Part_12.gif",0,1,0,48,0);
global.SprEBoss_Part[13] = sprite_add("Chara/Enemy/101/Part_13.gif",0,1,0,0,256);

global.SprEBoss_Atk1_Part[1] = sprite_add("Chara/Enemy/101/Atk1_Part_1.gif",0,1,0,48,48);
global.SprEBoss_Atk2_Part[1] = sprite_add("Chara/Enemy/101/Atk2_Part_1.gif",0,1,0,64,64);
global.SprEBoss_Atk3_Part[1] = sprite_add("Chara/Enemy/101/Atk3_Part_1.gif",0,1,0,64,64);

global.SprEBoss_Atk1_Part[3] = sprite_add("Chara/Enemy/101/Atk1_Part_3.gif",0,1,0,143,289);

global.SprEBoss_Atk1_Part[4] = sprite_add("Chara/Enemy/101/Atk1_Part_4.gif",0,1,0,60,20);
global.SprEBoss_Atk2_Part[4] = sprite_add("Chara/Enemy/101/Atk2_Part_4.gif",0,1,0,32,81);
global.SprEBoss_Atk3_Part[4] = sprite_add("Chara/Enemy/101/Atk3_Part_4.gif",0,1,0,64,334);

global.SprEBoss_Atk1_Part[8] = sprite_add("Chara/Enemy/101/Atk1_Part_8.gif",0,1,0,64,26);

global.SprEBoss_Bullet[0] = sprite_add("Chara/Enemy/101/Bullet_1.gif",0,1,0,16,16);
global.SndBoss[0] = Boss_sound01;
global.SndBoss[1] = Boss_sound02;
global.SndBoss[2] = Boss_sound03;
msg = "";

instance_create(x,y,objE101_Core);
instance_create(x,y,objE101_Part_0);
instance_create(x,y,objE101_Part_1);
instance_create(x,y,objE101_Part_2);
instance_create(x,y,objE101_Part_3);
instance_create(x,y,objE101_Part_4);
instance_create(x,y,objE101_Part_8);
}

