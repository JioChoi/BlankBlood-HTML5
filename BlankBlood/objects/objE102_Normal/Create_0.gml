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
global.SprEBoss_Bullet[0] = 0;
global.SndBoss[0] = 0;
global.SndBoss[1] = 0;
global.SndBoss[2] = 0;

msg = "Loading...";
//screen_redraw();
global.BossHP = 2000;
global.SprEBoss_Part[0] = sprite_add("pngs/Chara/Enemy/102/Part_0.png",1,1,0,180,194);
global.SprEBoss_Part[1] = sprite_add("pngs/Chara/Enemy/102/Part_1.png",1,1,0,30,33);
global.SprEBoss_Part[2] = sprite_add("pngs/Chara/Enemy/102/Part_2.png",1,1,0,30,33);
global.SprEBoss_Part[3] = sprite_add("pngs/Chara/Enemy/102/Part_3.png",1,1,0,35,75);
global.SprEBoss_Part[4] = sprite_add("pngs/Chara/Enemy/102/Part_4.png",1,1,0,35,75);
global.SprEBoss_Part[5] = sprite_add("pngs/Chara/Enemy/102/Part_5.png",25,1,0,28,28);
global.SprEBoss_Part[6] = sprite_add("pngs/Chara/Enemy/102/Part_6.png",14,1,0,0,16);
global.SprEBoss_Part[7] = sprite_add("pngs/Chara/Enemy/102/Part_7.png",19,1,0,101,50);
global.SprEBoss_Part[8] = sprite_add("pngs/Chara/Enemy/102/Part_8.png",17,1,0,17,23);
global.SprEBoss_Part[9] = sprite_add("pngs/Chara/Enemy/102/Part_9.png",1,1,0,17,20);
global.SprEBoss_Part[10] = sprite_add("pngs/Chara/Enemy/102/Part_10.png",1,1,0,17,20);
global.SprEBoss_Part[11] = sprite_add("pngs/Chara/Enemy/102/Part_11.png",11,1,0,17,20);
global.SprEBoss_Part[12] = sprite_add("pngs/Chara/Enemy/102/Part_12.png",5,1,0,17,20);
global.SprEBoss_Bullet[0] = sprite_add("pngs/Chara/Enemy/102/Bullet_1.png",2,1,0,24,16);
global.SprEBoss_Bullet[1] = sprite_add("pngs/Chara/Enemy/102/Bullet_2.png",2,1,0,50,3);

//global.SprEBoss_Atk1_Part[0] = sprite_add("Chara/Enemy/102/Atk1_Part_0.gif",0,0,1,0,0,48,48);
global.SndBoss[0] = Boss_sound04;
global.SndBoss[1] = Boss_sound05;
msg = "";

instance_create(x,y,objE102_Core);
}


