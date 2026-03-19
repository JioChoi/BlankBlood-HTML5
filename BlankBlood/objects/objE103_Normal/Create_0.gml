{
global.switches[21] = 0;
global.blood = 20;
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
global.BossHP = 5000;
global.SprEBoss_Part[0] = sprite_add("pngs/Chara/Enemy/103/00.png",4,1,0,171,375);
global.SprEBoss_Part[1] = sprite_add("pngs/Chara/Enemy/103/01.png",13,1,0,68,280);
global.SprEBoss_Part[2] = sprite_add("pngs/Chara/Enemy/103/02.png",16,1,0,58,200);
global.SprEBoss_Part[3] = sprite_add("pngs/Chara/Enemy/103/03.png",16,1,0,58,110);
global.SprEBoss_Part[4] = sprite_add("pngs/Chara/Enemy/103/04.png",14,1,0,34,175);
global.SprEBoss_Part[5] = sprite_add("pngs/Chara/Enemy/103/05.png",32,1,0,10,212);
global.SprEBoss_Part[6] = sprite_add("pngs/Chara/Enemy/103/06.png",10,1,0,25,200);
global.SprEBoss_Part[7] = sprite_add("pngs/Chara/Enemy/103/07.png",3,1,0,0,11);
global.SprEBoss_Part[8] = sprite_add("pngs/Chara/Enemy/103/08.png",31,1,0,246,90);
global.SprEBoss_Part[9] = sprite_add("pngs/Chara/Enemy/103/09.png",1,1,0,244,152);
global.SprEBoss_Part[10] = sprite_add("pngs/Chara/Enemy/103/10.png",2,1,0,16,16);

global.SndBoss[0] = Boss_sound06;
global.SndBoss[1] = Boss_sound07;
global.SndBoss[2] = Boss_sound08;
global.SndBoss[3] = Boss_sound09;
msg = "";
instance_create(x,y,objE103_Origin);
instance_create(x,y,objE103_Collision);
instance_create(x+random(250),y,objE103_Arms);
instance_create(x-random(250),y,objE103_Arms);
instance_create(x+random(250),y,objE103_Arms);
instance_create(x-random(250),y,objE103_Arms);
instance_create(x+random(250),y,objE103_Arms);
instance_create(x-random(250),y,objE103_Arms);
instance_create(x+random(250),y,objE103_Arms);
instance_create(x-random(250),y,objE103_Arms);
instance_create(x+random(250),y,objE103_Arms);
instance_create(x-random(250),y,objE103_Arms);
instance_create(x+random(250),y,objE103_Arms);
instance_create(x-random(250),y,objE103_Arms);
instance_create(x+random(250),y,objE103_Arms);
instance_create(x-random(250),y,objE103_Arms);
instance_create(x+random(250),y,objE103_Arms);
instance_create(x-random(250),y,objE103_Arms);

instance_create(1600,928,objE103_Weapon);

global.sw00 = instance_create(512,768,objCanonSwtch);
global.sw01 = instance_create(512-150,768,objCanonSwtch);
global.sw02 = instance_create(512-150*2,768,objCanonSwtch);

global.sw03 = instance_create(800,768,objCanonSwtch);
global.sw04 = instance_create(800+150,768,objCanonSwtch);
global.sw05 = instance_create(800+150*2,768,objCanonSwtch);
global.sw06 = instance_create(800+150*3,768,objCanonSwtch);
global.sw07 = instance_create(800+150*4,768,objCanonSwtch);

global.sw00.num = 0;
global.sw01.num = 1;
global.sw02.num = 2;
global.sw03.num = 3;
global.sw04.num = 4;
global.sw05.num = 5;
global.sw06.num = 6;
global.sw07.num = 7;

var numb;
numb = 0;
for(i=0;i<3;i+=1){
with(global.sw00){global.switches[numb] = shaff();numb+=1;};
with(global.sw01){global.switches[numb] = shaff();numb+=1;};
with(global.sw02){global.switches[numb] = shaff();numb+=1;};
with(global.sw03){global.switches[numb] = shaff();numb+=1;};
with(global.sw04){global.switches[numb] = shaff();numb+=1;};
with(global.sw05){global.switches[numb] = shaff();numb+=1;};
with(global.sw06){global.switches[numb] = shaff();numb+=1;};
with(global.sw07){global.switches[numb] = shaff();numb+=1;};
}
}


