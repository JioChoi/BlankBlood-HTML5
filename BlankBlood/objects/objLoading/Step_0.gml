text = "Loading is Started...";
//screen_redraw();
text = "Loading GameSettingData...";
//screen_redraw();
global.helper = true;

//���L�[�p
//global.key[0] = 37;	//Left
//global.key[1] = 39;	//Right
//global.key[2] = 38;	//Up
//global.key[3] = 40;	//Down

//�o�ړ�
global.key[0] = 74;	//Left
global.key[1] = 76;	//Right
global.key[2] = 73;	//Up
global.key[3] = 75;	//Down

global.key[4] = 90;	//�{�^��1
global.key[5] = 88;	//�{�^��2
global.key[6] = 67;	//�{�^��3
global.key[7] = 17;	//dash

//���ړ�
global.key[10] = 65;	//Left
global.key[11] = 68;	//Right
global.key[12] = 87;	//Up
global.key[13] = 83;	//Down

//�W���C�p
global.key[14] = 1;	//�{�^��1
global.key[15] = 2;	//�{�^��2
global.key[16] = 3;	//�{�^��3
global.key[17] = 4;	//dash
global.key[18] = 5;	//chara_change
global.key[19] = 6;	//pause	
global.key[20] = 7;	//decide

global.ctrlmode = 0;
global.volume = 1;
global.sevolume = 1;
global.vovolume = 1;

// if(file_exists("game")) execute_file("game");

if(!global.joypad) global.ctrlmode = 0;

text = "Loading Chara1_SpriteData...";
//screen_redraw();

global.SprP_stand_1[0] = sprite_add("pngs/Chara/1/stand_1.png",8,1,0,48,48);
global.SprP_stand_2[0] = sprite_add("pngs/Chara/1/stand_2.png",6,1,0,48,48);
global.SprP_stand_3[0] = sprite_add("pngs/Chara/1/stand_3.png",4,1,0,48,48);
global.SprP_walk_1[0] = sprite_add("pngs/Chara/1/walk_1.png",8,1,0,48,48);
global.SprP_walk_2[0] = sprite_add("pngs/Chara/1/walk_2.png",10,1,0,48,48);
global.SprP_run_1[0] = sprite_add("pngs/Chara/1/run_1.png",6,1,0,48,48);
global.SprP_run_2[0] = sprite_add("Chara/1/run_2.gif",0,1,0,48,48);
global.SprP_crouch_1[0] = sprite_add("pngs/Chara/1/crouch_1.png",8,1,0,48,48);
global.SprP_jumpU_1[0] = sprite_add("pngs/Chara/1/jumpU_1.png",3,1,0,48,48);
global.SprP_jumpD_1[0] = sprite_add("pngs/Chara/1/jumpD_1.png",3,1,0,48,96);

global.SprP_Atk_1[0] = sprite_add("pngs/Chara/1/Atk_1.png",6,1,0,48,48);
global.SprP_Atk_2[0] = sprite_add("pngs/Chara/1/Atk_2.png",5,1,0,48,48);
global.SprP_Atk_3[0] = sprite_add("pngs/Chara/1/Atk_3.png",6,1,0,48,48);
global.SprP_Atk_4[0] = sprite_add("pngs/Chara/1/Atk_4.png",6,1,0,48,48);
global.SprP_Atk_5[0] = sprite_add("pngs/Chara/1/Atk_5.png",36,1,0,48,48);
global.SprP_Atk_6[0] = sprite_add("pngs/Chara/1/Atk_6.png",41,1,0,64,48);
global.SprP_Atk_7[0] = sprite_add("pngs/Chara/1/Atk_7.png",53,1,0,128,48);
global.SprP_Atk_8[0] = sprite_add("pngs/Chara/1/Atk_8.png",12,1,0,48,48);
global.SprP_Atk_9[0] = sprite_add("pngs/Chara/1/Atk_9.png",1,1,0,16,16);
global.SprP_Atk_10[0] = sprite_add("pngs/Chara/1/Atk_10.png",12,1,0,48,48);
global.SprP_Atk_11[0] = sprite_add("pngs/Chara/1/Atk_11.png",7,1,0,48,48);
global.SprP_Atk_J[0] = sprite_add("pngs/Chara/1/Atk_J.png",10,1,0,48,48);
global.SprP_AtkE_1[0] = sprite_add("pngs/Chara/1/AtkE_1.png",1,1,0,48,48);
global.SprP_AtkE_2[0] = sprite_add("pngs/Chara/1/AtkE_2.png",1,1,0,48,48);
global.SprP_AtkE_3[0] = sprite_add("pngs/Chara/1/AtkE_3.png",1,1,0,48,48);
global.SprP_AtkE_4[0] = sprite_add("pngs/Chara/1/AtkE_4.png",1,1,0,48,48);
global.SprP_AtkE_5[0] = sprite_add("pngs/Chara/1/AtkE_5.png",4,1,0,192,24);
global.SprP_AtkE_J[0] = sprite_add("pngs/Chara/1/AtkE_J.png",1,1,0,48,48);

global.SprP_Damage_11[0] = sprite_add("pngs/Chara/1/Damage_11.png",5,1,0,48,48);
global.SprP_Damage_21[0] = sprite_add("pngs/Chara/1/Damage_21.png",7,1,0,48,48);
global.SprP_Damage_221[0] = sprite_add("pngs/Chara/1/Damage_221.png",2,1,0,48,48);
global.SprP_Damage_222[0] = sprite_add("pngs/Chara/1/Damage_222.png",2,1,0,48,48);
global.SprP_Damage_31[0] = sprite_add("pngs/Chara/1/Damage_31.png",8,1,0,48,16);

global.SprP_Bind_1[0] = sprite_add("pngs/Chara/1/Bind_1.png",8,1,0,48,48);
global.SprP_Bind_2[0] = sprite_add("pngs/Chara/1/Bind_2.png",8,1,0,48,48);
global.SprP_Bind_3[0] = sprite_add("pngs/Chara/1/Bind_3.png",10,1,0,48,16);
global.SprP_Bind_4[0] = sprite_add("pngs/Chara/1/Bind_4.png",5,1,0,48,48);
global.SprP_Bind_5[0] = sprite_add("pngs/Chara/1/Bind_5.png",5,1,0,48,48);
global.SprP_Bind_6[0] = sprite_add("pngs/Chara/1/Bind_6.png",11,1,0,48,48);
global.SprP_Bind_7[0] = sprite_add("pngs/Chara/1/Bind_7.png",3,1,0,48,36);

global.SprP_Death_10[0] = sprite_add("pngs/Chara/1/Death_10.png",6,1,0,48,48);
global.SprP_Death_11[0] = sprite_add("pngs/Chara/1/Death_11.png",5,1,0,48,48);
global.SprP_Death_12[0] = sprite_add("pngs/Chara/1/Death_12.png",8,1,0,48,48);
global.SprP_Death_10n[0] = sprite_add("pngs/Chara/1/Death_10n.png",6,1,0,48,48);
global.SprP_Death_11n[0] = sprite_add("pngs/Chara/1/Death_11n.png",5,1,0,48,48);
global.SprP_Death_12n[0] = sprite_add("pngs/Chara/1/Death_12n.png",8,1,0,48,48);

global.SprP_Death_20[0] = sprite_add("pngs/Chara/1/Death_20.png",24,1,0,48,48);
global.SprP_Death_21[0] = sprite_add("pngs/Chara/1/Death_21.png",4,1,0,48,48);
global.SprP_Death_31[0] = sprite_add("pngs/Chara/1/Death_31.png",23,1,0,48,48);
global.SprP_Death_41[0] = sprite_add("pngs/Chara/1/Death_41.png",43,1,0,48,48);
global.SprP_Death_51[0] = sprite_add("pngs/Chara/1/Death_51.png",10,1,0,48,16);
global.SprP_Death_61[0] = sprite_add("pngs/Chara/1/Death_61.png",5,1,0,48,48);
global.SprP_Death_71[0] = sprite_add("pngs/Chara/1/Death_71.png",30,1,0,48,48);
global.SprP_Death_72[0] = sprite_add("pngs/Chara/1/Death_72.png",21,1,0,48,48);
global.SprP_Death_81[0] = sprite_add("pngs/Chara/1/Death_81.png",43,1,0,48,48);
global.SprP_Death_91[0] = sprite_add("pngs/Chara/1/Death_91.png",18,1,0,48,36);
global.SprP_Death_101[0] = sprite_add("pngs/Chara/1/Death_101.png",79,1,0,48,48);
global.SprP_Death_102[0] = sprite_add("pngs/Chara/1/Death_102.png",15,1,0,48,48);

global.SprP_Death_Cut_1[0] = sprite_add("pngs/Chara/1/Death_Cut_1.png",1,1,0,14,14);
global.SprP_Death_Cut_2[0] = sprite_add("pngs/Chara/1/Death_Cut_2.png",1,1,0,7,15);
/*-----------------------------------------------*/
text = "Loading Chara2_SpriteData...";
//screen_redraw();

global.SprP_stand_1[1] = sprite_add("pngs/Chara/2/stand_1.png",8,1,0,48,48);
global.SprP_stand_2[1] = sprite_add("pngs/Chara/2/stand_2.png",8,1,0,48,48);
global.SprP_stand_3[1] = sprite_add("pngs/Chara/2/stand_3.png",11,1,0,48,48);
global.SprP_walk_1[1] = sprite_add("pngs/Chara/2/walk_1.png",6,1,0,48,48);
global.SprP_walk_2[1] = sprite_add("pngs/Chara/2/walk_2.png",6,1,0,48,48);
global.SprP_run_1[1] = sprite_add("pngs/Chara/2/run_1.png",6,1,0,48,48);
global.SprP_run_2[1] = sprite_add("pngs/Chara/2/run_2.png",6,1,0,48,48);
global.SprP_crouch_1[1] = sprite_add("pngs/Chara/2/crouch_1.png",14,1,0,48,48);
global.SprP_jumpU_1[1] = sprite_add("pngs/Chara/2/jumpU_1.png",2,1,0,48,48);
global.SprP_jumpU_2[1] = sprite_add("pngs/Chara/2/jumpU_2.png",2,1,0,48,48);
global.SprP_jumpD_1[1] = sprite_add("pngs/Chara/2/jumpD_1.png",2,1,0,48,48);

global.SprP_Atk_1[1] = sprite_add("pngs/Chara/2/Atk_1.png",12,1,0,40,40);
global.SprP_Atk_2[1] = sprite_add("pngs/Chara/2/Atk_2.png",13,1,0,48,48);
global.SprP_Atk_3[1] = sprite_add("pngs/Chara/2/Atk_3.png",9,1,0,15,9);
global.SprP_Atk_4[1] = sprite_add("pngs/Chara/2/Atk_4.png",3,1,0,64,40);
global.SprP_Atk_5[1] = sprite_add("pngs/Chara/2/Atk_5.png",24,1,0,64,48);
global.SprP_Atk_J[1] = sprite_add("pngs/Chara/2/Atk_J.png",24,1,0,64,48);
global.SprP_AtkE_1[1] = sprite_add("pngs/Chara/2/AtkE_1.png",3,1,0,5,5);
global.SprP_AtkE_2[1] = sprite_add("pngs/Chara/2/AtkE_2.png",1,1,0,3,5);
global.SprP_AtkE_3[1] = sprite_add("pngs/Chara/2/AtkE_3.png",1,1,0,10,9);
global.SprP_AtkE_4[1] = sprite_add("pngs/Chara/2/AtkE_4.png",15,1,0,64,48);
global.SprP_AtkE_J[1] = sprite_add("pngs/Chara/2/AtkE_J.png",6,1,0,15,9);

global.SprP_Damage_11[1] = sprite_add("pngs/Chara/2/Damage_11.png",5,1,0,48,48);
global.SprP_Damage_21[1] = sprite_add("pngs/Chara/2/Damage_21.png",7,1,0,48,48);
global.SprP_Damage_221[1] = sprite_add("pngs/Chara/2/Damage_221.png",2,1,0,48,48);
global.SprP_Damage_222[1] = sprite_add("pngs/Chara/2/Damage_222.png",1,1,0,48,48);
global.SprP_Damage_31[1] = sprite_add("pngs/Chara/2/Damage_31.png",8,1,0,48,16);

global.SprP_Bind_1[1] = sprite_add("pngs/Chara/2/Bind_1.png",8,1,0,48,48);
global.SprP_Bind_2[1] = sprite_add("pngs/Chara/2/Bind_2.png",8,1,0,48,48);
global.SprP_Bind_3[1] = sprite_add("pngs/Chara/2/Bind_3.png",8,1,0,48,16);
global.SprP_Bind_4[1] = sprite_add("pngs/Chara/2/Bind_4.png",5,1,0,48,48);
global.SprP_Bind_5[1] = sprite_add("pngs/Chara/2/Bind_5.png",5,1,0,48,48);
global.SprP_Bind_6[1] = sprite_add("pngs/Chara/2/Bind_6.png",5,1,0,48,48);
global.SprP_Bind_7[1] = sprite_add("pngs/Chara/2/Bind_7.png",3,1,0,48,36);

global.SprP_Death_10[1] = sprite_add("pngs/Chara/2/Death_10.png",6,1,0,48,48);
global.SprP_Death_11[1] = sprite_add("pngs/Chara/2/Death_11.png",5,1,0,48,48);
global.SprP_Death_12[1] = sprite_add("pngs/Chara/2/Death_12.png",8,1,0,48,48);
global.SprP_Death_10n[1] = sprite_add("pngs/Chara/2/Death_10n.png",6,1,0,48,48);
global.SprP_Death_11n[1] = sprite_add("pngs/Chara/2/Death_11n.png",5,1,0,48,48);
global.SprP_Death_12n[1] = sprite_add("pngs/Chara/2/Death_12n.png",8,1,0,48,48);

global.SprP_Death_20[1] = sprite_add("pngs/Chara/2/Death_20.png",24,1,0,48,48);
global.SprP_Death_21[1] = sprite_add("pngs/Chara/2/Death_21.png",4,1,0,48,48);
global.SprP_Death_31[1] = sprite_add("pngs/Chara/2/Death_31.png",23,1,0,48,48);
global.SprP_Death_41[1] = sprite_add("pngs/Chara/2/Death_41.png",43,1,0,48,48);
global.SprP_Death_51[1] = sprite_add("pngs/Chara/2/Death_51.png",8,1,0,48,16);
global.SprP_Death_61[1] = sprite_add("pngs/Chara/2/Death_61.png",5,1,0,48,48);
global.SprP_Death_71[1] = sprite_add("pngs/Chara/2/Death_71.png",30,1,0,48,48);
global.SprP_Death_72[1] = sprite_add("pngs/Chara/2/Death_72.png",13,1,0,48,48);
global.SprP_Death_81[1] = sprite_add("pngs/Chara/2/Death_81.png",41,1,0,48,48);
global.SprP_Death_91[1] = sprite_add("pngs/Chara/2/Death_91.png",17,1,0,48,36);
global.SprP_Death_101[1] = sprite_add("pngs/Chara/2/Death_101.png",131,1,0,48,48);
global.SprP_Death_102[1] = sprite_add("pngs/Chara/2/Death_102.png",17,1,0,48,48);

global.SprP_Death_Cut_1[1] = sprite_add("pngs/Chara/2/Death_Cut_1.png",1,1,0,10,19);
global.SprP_Death_Cut_2[1] = sprite_add("pngs/Chara/2/Death_Cut_2.png",1,1,0,7,15);

/* */
/*----------------------Enemy-------------------------*/
text = "Loading EnemySpriteData...";
//screen_redraw();

global.SprE0a_stand_1 = sprite_add("pngs/Chara/Enemy/0a/Stand.png",6,1,0,24,24);

global.SprE01_stand_1 = sprite_add("pngs/Chara/Enemy/01/Stand.png",5,1,0,48,48);
global.SprE01_Atk_1 = sprite_add("pngs/Chara/Enemy/01/Atk_1.png",11,1,0,48,48);
global.SprE01_Atk_2 = sprite_add("pngs/Chara/Enemy/01/Atk_2.png",10,1,0,48,48);

global.SprE02_stand_1 = sprite_add("pngs/Chara/Enemy/02/Stand.png",1,1,0,48,48);
global.SprE02_Atk_1 = sprite_add("pngs/Chara/Enemy/02/Atk_1.png",13,1,0,48,48);

global.SprE03_stand_1 = sprite_add("pngs/Chara/Enemy/03/Stand.png",1,1,0,48,48);
global.SprE03_Walk_1 = sprite_add("pngs/Chara/Enemy/03/Walk.png",10,1,0,48,48);
global.SprE03_Atk_1 = sprite_add("pngs/Chara/Enemy/03/Atk_1.png",11,1,0,48,48);

global.SprE04_stand_1 = sprite_add("pngs/Chara/Enemy/04/Stand.png",1,1,0,48,48);
global.SprE04_Walk_1 = sprite_add("pngs/Chara/Enemy/04/Walk.png",4,1,0,48,48);
global.SprE04_Bind_1 = sprite_add("pngs/Chara/Enemy/04/Bind_1.png",4,1,0,48,48);
global.SprE04_Finish_1 = sprite_add("pngs/Chara/Enemy/04/Finish_1.png",40,1,0,48,48);

global.SprE05_stand_1 = sprite_add("pngs/Chara/Enemy/05/Stand.png",6,1,0,48,48);
global.SprE05_Atk_1 = sprite_add("pngs/Chara/Enemy/05/Atk_1.png",12,1,0,48,48);

global.SprE06_stand_1 = sprite_add("pngs/Chara/Enemy/06/Stand.png",5,1,0,48,48);
global.SprE06_Walk_1 = sprite_add("pngs/Chara/Enemy/06/Walk.png",7,1,0,48,48);
global.SprE06_Atk_1 = sprite_add("pngs/Chara/Enemy/06/Atk_1.png",11,1,0,64,48);
global.SprE06_Bind_1 = sprite_add("pngs/Chara/Enemy/06/Bind_1.png",4,1,0,64,48);
global.SprE06_Finish_1 = sprite_add("pngs/Chara/Enemy/06/Finish_1.png",48,1,0,64,48);

global.SprE07_stand_1 = sprite_add("pngs/Chara/Enemy/07/Stand.png",1,1,0,48,48);
global.SprE07_Walk_1 = sprite_add("pngs/Chara/Enemy/07/Walk.png",12,1,0,48,48);
global.SprE07_Atk_1 = sprite_add("pngs/Chara/Enemy/07/Atk_1.png",29,1,0,144,48);
global.SprE07_Bind_1 = sprite_add("pngs/Chara/Enemy/07/Bind_1.png",4,1,0,144,48);

global.SprE08_stand_1 = sprite_add("pngs/Chara/Enemy/08/Stand.png",4,1,0,16,16);
global.SprE08_Walk_1 = sprite_add("pngs/Chara/Enemy/08/Walk.png",4,1,0,16,16);
global.SprE08_Atk_1 = sprite_add("pngs/Chara/Enemy/08/Atk_1.png",18,1,0,16,16);

global.SprE09_stand_1 = sprite_add("pngs/Chara/Enemy/09/Stand.png",1,1,0,64,48);
global.SprE09_Atk_1 = sprite_add("pngs/Chara/Enemy/09/Atk_1.png",15,1,0,64,48);
global.SprE09_Bind_1 = sprite_add("pngs/Chara/Enemy/09/Bind_1.png",23,1,0,64,48);
global.SprE09_Finish_1 = sprite_add("pngs/Chara/Enemy/09/Finish_1.png",9,1,0,64,48);

global.SprE10_stand_1 = sprite_add("pngs/Chara/Enemy/10/Stand.png",1,1,0,64,80);
global.SprE10_Walk_1 = sprite_add("pngs/Chara/Enemy/10/Walk.png",7,1,0,64,80);
global.SprE10_Atk_1 = sprite_add("pngs/Chara/Enemy/10/Atk_1.png",15,1,0,64,80);
global.SprE10_Bind_1 = sprite_add("pngs/Chara/Enemy/10/Bind_1.png",14,1,0,64,80);

global.SprE11_Walk_1 = sprite_add("pngs/Chara/Enemy/11/Walk.png",5,1,0,48,48);

global.SprE12_Walk_1 = sprite_add("pngs/Chara/Enemy/12/Walk.png",4,1,0,48,48);
global.SprE12_Atk_1 = sprite_add("pngs/Chara/Enemy/12/Atk_1.png",12,1,0,48,48);
global.SprE12_Bullet_1 = sprite_add("pngs/Chara/Enemy/12/Bullet_1.png",1,1,0,24,8);

global.SprE13_Atk_1 = sprite_add("pngs/Chara/Enemy/13/Atk_1.png",3,1,0,80,50);
global.SprE13_Bullet_1 = sprite_add("pngs/Chara/Enemy/13/Bullet_1.png",1,1,0,7,2);

global.SprE14_stand_1 = sprite_add("pngs/Chara/Enemy/14/Stand.png",1,1,0,64,80);
global.SprE14_Walk_1 = sprite_add("pngs/Chara/Enemy/14/Walk.png",7,1,0,64,80);
global.SprE14_Atk_1 = sprite_add("pngs/Chara/Enemy/14/Atk_1.png",7,1,0,144,80);
global.SprE14_Atk_2 = sprite_add("pngs/Chara/Enemy/14/Atk_2.png",7,1,0,144,80);

global.SprE15_Walk_1 = sprite_add("pngs/Chara/Enemy/15/Walk.png",3,1,0,48,48);
global.SprE15_Atk_1 = sprite_add("pngs/Chara/Enemy/15/Atk_1.png",12,1,0,48,48);
global.SprE15_Bullet_1 = sprite_add("pngs/Chara/Enemy/15/Bullet_1.png",7,1,0,16,16);

global.SprE16_Atk_1 = sprite_add("pngs/Chara/Enemy/16/Atk_1.png",7,1,0,64,64);
global.SprE16_Bind_1 = sprite_add("pngs/Chara/Enemy/16/Bind_1.png",5,1,0,64,64);

global.SprE17_Walk_1 = sprite_add("pngs/Chara/Enemy/17/Walk.png",4,1,0,48,48);
global.SprE17_Bullet_1 = sprite_add("pngs/Chara/Enemy/17/Bullet_1.png",36,1,0,8,8);

global.SprE18_Atk_1 = sprite_add("pngs/Chara/Enemy/18/Atk_1.png",22,1,0,64,48);

global.SprE19_Walk_1 = sprite_add("pngs/Chara/Enemy/19/Walk.png",5,1,0,48,48);
global.SprE19_Jump_1 = sprite_add("pngs/Chara/Enemy/19/Jump.png",12,1,0,48,48);
global.SprE19_Bind_1 = sprite_add("pngs/Chara/Enemy/19/Bind_1.png",3,1,0,48,48);

global.SprE20_Walk_1 = sprite_add("pngs/Chara/Enemy/20/Walk.png",5,1,0,48,48);
global.SprE20_Jump_1 = sprite_add("pngs/Chara/Enemy/20/Jump.png",15,1,0,48,48);
global.SprE20_Bind_1 = sprite_add("pngs/Chara/Enemy/20/Bind_1.png",44,1,0,48,48);

global.SprE21_Walk_1 = sprite_add("pngs/Chara/Enemy/21/Walk.png",10,1,0,48,48);
global.SprE21_Atk_1 = sprite_add("pngs/Chara/Enemy/21/Atk_1.png",12,1,0,48,48);
global.SprE21_Bind_1 = sprite_add("pngs/Chara/Enemy/21/Bind_1.png",5,1,0,48,48);

global.SprE[22,0] = sprite_add("pngs/Chara/Enemy/22/00.png",6,1,0,64,48);
global.SprE[22,1] = sprite_add("pngs/Chara/Enemy/22/01.png",6,1,0,64,48);
global.SprE[22,2] = sprite_add("pngs/Chara/Enemy/22/02.png",12,1,0,64,48);
global.SprE[22,3] = sprite_add("pngs/Chara/Enemy/22/03.png",27,1,0,64,48);
global.SprE[22,4] = sprite_add("pngs/Chara/Enemy/22/04.png",4,1,0,64,48);
global.SprE[22,5] = sprite_add("pngs/Chara/Enemy/22/05.png",4,1,0,64,48);

global.SprE[23,0] = sprite_add("pngs/Chara/Enemy/23/00.png",1,1,0,48,48);
global.SprE[23,1] = sprite_add("pngs/Chara/Enemy/23/01.png",1,1,0,48,48);
global.SprE[23,2] = sprite_add("pngs/Chara/Enemy/23/02.png",1,1,0,48,48);
global.SprE[23,3] = sprite_add("pngs/Chara/Enemy/23/03.png",4,1,0,48,48);
global.SprE[23,4] = sprite_add("pngs/Chara/Enemy/23/04.png",16,1,0,72,55);
global.SprE[23,5] = sprite_add("pngs/Chara/Enemy/23/05.png",62,1,0,72,55);

global.SprE[24,0] = sprite_add("pngs/Chara/Enemy/24/00.png",3,1,0,16,8);

global.SprE[25,0] = sprite_add("pngs/Chara/Enemy/25/00.png",1,1,0,120,53);
global.SprE[25,1] = sprite_add("pngs/Chara/Enemy/25/01.png",1,1,0,11,13);
global.SprE[25,2] = sprite_add("pngs/Chara/Enemy/25/02.png",1,1,0,11,13);
global.SprE[25,3] = sprite_add("pngs/Chara/Enemy/25/03.png",1,1,0,21,21);
global.SprE[25,4] = sprite_add("pngs/Chara/Enemy/25/04.png",1,1,0,14,15);
global.SprE[25,5] = sprite_add("pngs/Chara/Enemy/25/05.png",1,1,0,14,15);
global.SprE[25,6] = sprite_add("pngs/Chara/Enemy/25/06.png",1,1,0,18,62);
global.SprE[25,7] = sprite_add("pngs/Chara/Enemy/25/07.png",1,1,0,18,19);

global.SprE51_Atk_1 = sprite_add("pngs/Chara/Enemy/51/Atk_1.png",30,1,0,32,32);

global.SprE52_Atk_1 = sprite_add("pngs/Chara/Enemy/52/Atk_1.png",17,1,0,16,96);
global.SprE52_Finish_1 = sprite_add("pngs/Chara/Enemy/52/Finish_1.png",6,1,0,16,96);

global.SprE53_Normal = sprite_add("pngs/Chara/Enemy/53/Normal.png",1,1,0,96,5);

global.SprE54_Atk_1 = sprite_add("pngs/Chara/Enemy/54/Atk_1.png",32,1,0,192,8);
global.SprE54_Finish_1 = sprite_add("pngs/Chara/Enemy/54/Finish_1.png",5,1,0,192,8);

global.SprE55_Normal = sprite_add("pngs/Chara/Enemy/55/Normal.png",8,1,0,0,0);
global.SprE55_Normal_2 = sprite_add("pngs/Chara/Enemy/55/Normal_2.png",8,1,0,0,0);
global.SprE56_Normal = sprite_add("pngs/Chara/Enemy/56/Normal.png",60,0,0,0,0);
global.SprE57_Normal = sprite_add("pngs/Chara/Enemy/57/Normal.png",5,1,0,0,0);

global.SprE58_Normal = sprite_add("pngs/Chara/Enemy/58/Normal.png",7,1,0,45,22);
global.SprE58_Finish = sprite_add("pngs/Chara/Enemy/58/Finish.png",7,1,0,45,22);

global.SprE60_Normal = sprite_add("pngs/Chara/Enemy/60/Normal.png",8,1,0,0,0);

/* */
/*----------------------Effects-------------------------*/
text = "Loading EffectSpriteData...";
//screen_redraw();

global.SprRec_Item = sprite_add("pngs/Chara/Effect/Rec_Item.png",19,1,0,12,16);
global.SprPoint_Item = sprite_add("pngs/Chara/Effect/Point_Item.png",38,1,0,12,16);
global.SprEffect_Blood_01 = sprite_add("pngs/Chara/Effect/Blood_01.png",8,1,0,31,28);
global.SprEffect_Blood_02 = sprite_add("pngs/Chara/Effect/Blood_02.png",8,1,0,62,57);
global.SprEffect_Save_01 = sprite_add("pngs/Chara/Effect/Save_01.png",6,0,0,48,48);
//sprite_set_alpha_from_sprite(global.SprEffect_Save_01,global.SprEffect_Save_01);

global.SprEffect_Particle[0] = sprite_add("pngs/Chara/Effect/Particle/00.png",10,1,0,16,17);
global.SprEffect_Particle[20] = sprite_add("pngs/Chara/Effect/Particle/20.png",1,1,0,8,8);
global.SprEffect_Particle[21] = sprite_add("pngs/Chara/Effect/Particle/21.png",1,1,0,8,8);
global.SprEffect_Particle[22] = sprite_add("Chara/Effect/Particle/22.gif",0,1,0,8,8);
global.SprEffect_Particle[23] = sprite_add("Chara/Effect/Particle/23.gif",0,1,0,8,8);
global.SprEffect_Particle[24] = sprite_add("Chara/Effect/Particle/24.gif",0,1,0,8,8);
global.SprEffect_Particle[25] = sprite_add("Chara/Effect/Particle/25.gif",0,1,0,8,8);
/*----------------------Block-------------------------*/
global.SprBlock_01 = sprite_add("pngs/Chara/Block/Block_01.png",1,1,0,0,0);
/*----------------------Sound-------------------------*/
text = "Loading SoundEffectData...";
//screen_redraw();

global.SndSwing_1 = Swing_1;
global.SndSwing_2 = Swing_2;
global.SndSwing_3 = Swing_3;
global.SndSwing_4 = Swing_4;

global.SndStep_1 = Step_1;
global.SndStep_2 = Step_2;

global.SndShot_1 = Shot_1;
global.SndShot_2 = Shot_2;
global.SndBullet = Bullet;
global.SndReload_1 = Reload_1;
global.SndReload_2 = Reload_2;
global.SndReload_3 = Reload_3;

global.SndSe_1 = Se_01;
global.SndSe_2 = Se_02;
global.SndSe_3 = Se_03;
global.SndSe_4 = Se_04;
global.SndSwitch_1 = Switch_1;
global.SndSwitch_2 = Switch_2;
global.SndRec = Rec;
global.SndItem = Item;
global.SndSave = Save;
global.SndSelect = Select;
global.SndDecide = Decide;
global.SndCancel = Cancel;

global.SndHit_00 = Hit_00;
global.SndHit_01 = Hit_01;
global.SndHit_02 = Hit_02;
global.SndHit_03 = Hit_03;
global.SndHit_04 = Hit_04;
global.SndHit_05 = Hit_05;
global.SndHit_06 = Hit_06;
global.SndHit_07 = Hit_07;
global.SndHit_08 = Hit_08;
global.SndHit_09 = Hit_09;
global.SndHit_10 = Hit_10;
global.SndHit_11 = Hit_11;
global.SndHit_12 = Hit_12;
global.SndHit_13 = Hit_13;
global.SndHit_14 = Hit_14;
global.SndHit_15 = Hit_15;
global.SndHit_16 = Hit_16;
global.SndHit_17 = Hit_17;
global.SndHit_18 = Hit_18;
global.SndHit_19 = Hit_19;
global.SndHit_20 = Hit_20;
global.SndHit_21 = Hit_21;
global.SndHit_22 = Hit_22;
global.SndHit_23 = Hit_23;
global.SndHit_24 = Hit_24;
/*----------------------Voice-------------------------*/
text = "Loading VoiceData...";
//screen_redraw();

global.VicDmg_01[0] = Dmg_01;
global.VicDmg_02[0] = Dmg_02;
global.VicDmg_03[0] = Dmg_03;
global.VicDmg_04[0] = Dmg_04;
global.VicDmg_05[0] = Dmg_05;
global.VicDmg_06[0] = Dmg_06;
global.VicDmg_07[0] = Dmg_07;
global.VicDmg_08[0] = Dmg_08;
global.VicDmg_09[0] = Dmg_09;
global.VicDmg_10[0] = Dmg_10;
global.VicDmg_11[0] = Dmg_11;
global.VicDmg_12[0] = Dmg_12;
global.VicDmg_13[0] = Dmg_13;
global.VicDmg_14[0] = Dmg_14;
global.VicDmg_15[0] = Dmg_15;
global.VicDmg_16[0] = Dmg_16;
global.VicDmg_17[0] = Dmg_17;
global.VicDmg_18[0] = Dmg_18;
global.VicDmg_19[0] = Dmg_19;

global.VicDmg_51[0] = Dmg_51;
global.VicDmg_52[0] = Dmg_52;
global.VicDmg_53[0] = Dmg_53;
global.VicDmg_54[0] = Dmg_54;
global.VicDmg_55[0] = Dmg_55;
global.VicDmg_56[0] = Dmg_56;
global.VicDmg_57[0] = Dmg_57;
global.VicDmg_58[0] = Dmg_58;
global.VicDmg_59[0] = Dmg_59;

global.VicDmg_01[1] = Dmg_101;
global.VicDmg_02[1] = Dmg_102;
global.VicDmg_03[1] = Dmg_103;
global.VicDmg_04[1] = global.VicDmg_01[1];
global.VicDmg_05[1] = global.VicDmg_02[1];
global.VicDmg_06[1] = global.VicDmg_03[1];
global.VicDmg_07[1] = global.VicDmg_01[1];

global.VicDmg_08[1] = global.VicDmg_08[0];
global.VicDmg_09[1] = global.VicDmg_09[0];
global.VicDmg_10[1] = global.VicDmg_10[0];
global.VicDmg_11[1] = global.VicDmg_11[0];
global.VicDmg_12[1] = global.VicDmg_12[0];
global.VicDmg_13[1] = global.VicDmg_13[0];
global.VicDmg_14[1] = global.VicDmg_14[0];
global.VicDmg_15[1] = Dmg_115;
global.VicDmg_16[1] = Dmg_116;
global.VicDmg_17[1] = Dmg_117;
global.VicDmg_18[1] = Dmg_118;
global.VicDmg_19[1] = Dmg_119;

global.VicDmg_51[1] = global.VicDmg_01[1];
global.VicDmg_52[1] = global.VicDmg_02[1];
global.VicDmg_53[1] = global.VicDmg_03[1];
global.VicDmg_54[1] = global.VicDmg_02[1];
global.VicDmg_55[1] = Dmg_155;
global.VicDmg_56[1] = global.VicDmg_56[0];
global.VicDmg_57[1] = Dmg_157;
global.VicDmg_58[1] = Dmg_158;
global.VicDmg_59[1] = Dmg_159;


/* */
text = "Initializing...";
//screen_redraw();

bGM_startup();
mbtext_setfont(sprZen16px,sprHan16px,16);
global.g = 0.9;
global.bgm = 0;
global.bgm_kind = 0;
global.chr_dir = 1;
global.room_x = 0;
global.room_y = 0;
global.xpos = 96;
global.ypos = 160;
global.move_vspeed = 0;
global.scr_dark = 0;

var i,j;
for(i=0;i<12;i+=1)for(j=0;j<11;j+=1){global.room_num[i,j] = -99;}
global.room_num[0,0] = room01_n;
global.room_num[1,0] = room02_n;
global.room_num[2,0] = room03_n;
global.room_num[2,1] = room04_n;
global.room_num[2,2] = room05_n;
global.room_num[2,3] = room06_n;
global.room_num[3,3] = room07_n;
global.room_num[4,3] = room08_n;
global.room_num[4,2] = room09_n;
global.room_num[4,1] = room10_n;
global.room_num[4,0] = room11_n;
global.room_num[3,0] = room12_n;
global.room_num[5,0] = room13_n;
global.room_num[5,1] = room14_n;
global.room_num[5,2] = room15_n;
global.room_num[6,2] = room16_n;
global.room_num[6,3] = room17_n;
global.room_num[6,4] = room18_n;

global.room_num[5,4] = room19_n;
global.room_num[4,4] = room20_n;
global.room_num[4,5] = room21_n;
global.room_num[3,5] = room22_n;
global.room_num[3,6] = room23_n;
global.room_num[2,5] = room24_n;
global.room_num[2,6] = room25_n;
global.room_num[1,6] = room26_n;
global.room_num[1,7] = room27_n;
global.room_num[2,7] = room28_n;
global.room_num[3,7] = room29_n;
global.room_num[4,7] = room30_n;
global.room_num[5,7] = room31_n;
global.room_num[5,6] = room32_n;
global.room_num[5,5] = room33_n;

global.room_num[7,4] = room34_n;
global.room_num[8,4] = room35_n;
global.room_num[8,5] = room36_n;
global.room_num[7,5] = room37_n;
global.room_num[7,6] = room38_n;
global.room_num[7,7] = room39_n;
global.room_num[8,7] = room40_n;
global.room_num[9,7] = room41_n;
global.room_num[10,7] = room42_n;
global.room_num[10,6] = room43_n;
global.room_num[9,6] = room44_n;
global.room_num[8,6] = room45_n;
global.room_num[9,5] = room46_n;
global.room_num[10,5] = room47_n;
global.room_num[10,4] = room48_n;
global.room_num[9,4] = room49_n;

global.room_num[6,5] = room50_n;
global.room_num[6,6] = room51_n;
global.room_num[6,7] = room52_n;
global.room_num[6,8] = room53_n;
global.room_num[6,9] = room54_n;
global.room_num[7,9] = room55_n;
global.room_num[8,9] = room56_n;
global.room_num[9,9] = room57_n;
global.room_num[10,9] = room58_n;
global.room_num[10,10] = room59_n;
global.room_num[9,10] = room60_n;
global.room_num[8,10] = room61_n;
global.room_num[7,10] = room62_n;
global.room_num[6,10] = room63_n;

global.room_num[11,0] = room70_n;
global.room_num[11,1] = room71_n;
global.room_num[11,2] = room72_n;
/*
global.room_num[0,0] = room01_n;
global.room_num[1,0] = room02_n;
global.room_num[1,1] = room3;
global.room_num[0,1] = room4;
global.room_num[0,2] = room5;
global.room_num[2,1] = room6;
global.room_num[1,2] = room7;
global.room_num[2,2] = room8;
global.room_num[3,2] = room9;
global.room_num[3,1] = room10;
global.room_num[4,2] = room11;
global.room_num[4,3] = room12;
global.room_num[5,3] = room13;
global.room_num[5,2] = room14;
global.room_num[5,4] = room15;
global.room_num[4,4] = room16;
global.room_num[3,4] = room17;
global.room_num[3,5] = room18;
global.room_num[4,5] = room19;
global.room_num[4,6] = room20;
global.room_num[3,3] = room21;
global.room_num[3,6] = room22;
global.room_num[2,6] = room24;
global.room_num[1,6] = room23;
global.room_num[1,5] = room25;
global.room_num[1,4] = room26;
global.room_num[2,4] = room27;
global.room_num[0,6] = room28;
*/
global.chara = 0;
global.HPMAX[0] = 130;
global.HPMAX[1] = 100;
global.HP[0] = global.HPMAX[0];
global.HP[1] = global.HPMAX[1];

global.weapon = 0;
global.bullet = 8;
global.bullet2 = 100;
global.bullet3 = 5;
global.debug = 0;
global.bind = -100;
global.clone = true;
global.assist = -1;
global.gun_kind = 0;
global.help = true;
/* */
var i;
for(i=0;i<100;i+=1){
global.item_flag[i] = 0;
global.item_point[i] = 0;
global.item_name[i] = "";
global.item_detail[i] = "";
}

global.item_name[0] = "�e�X�g�p�A�C�e��";
global.item_detail[0] = "�R������Ă���Ƃ������Ƃ̓f�o�b�O��������̓o�O�����ς��邢�͉�͂ł�����̂��ȁH";
global.item_point[0] = 0;

global.item_name[1] = "�L�k�̂��т�����";
global.item_detail[1] = "�L�k�Ȃǂ��A�Ȃ��Ă��鑕���p�̎����B";
global.item_point[1] = 3000;

global.item_name[2] = "�����O�\\�[�h";
global.item_detail[2] = "�悭���镁�ʂ̐��m���B�{���͕���Ƃ��ėL�p�����A�����o���Ȃ��B";
global.item_point[2] = 12000;

global.item_name[3] = "�I���S�[��";
global.item_detail[3] = "�l�W������Ƃ��ꂢ�ȉ��F�������B";
global.item_point[3] = 8800;

global.item_name[4] = "�r��";
global.item_detail[4] = "��ŏo���Ă��鑕���p�̘r�ցB��r�I�����Ȃ�̂������ɓ��ʂȂ�̂ł�Ȃ��B";
global.item_point[4] = 12000;

global.item_name[5] = "�T���O���X";
global.item_detail[5] = "�i�E�Ń����O�Ȑl�Ɏ������A���˓����⎇�O������ڂ�ی삷�邽�߂ɂ�����A�����Y�ɐF�̂����ዾ�B�j���p�B";
global.item_point[5] = 2000;

global.item_name[6] = "��";
global.item_detail[6] = "�`�����ނƂ����܂��z�����܂�Ă��܂��E�E�E�悤�Ȃ��Ƃ͂Ȃ�";
global.item_point[6] = 8400;

global.item_name[7] = "���r�[";
global.item_detail[7] = "��΁B���ɃJ�b�g���Ă���B";
global.item_point[7] = 20000;

global.item_name[8] = "��z";
global.item_detail[8] = "���ɂ���������Ă���B���b�L�[�B�ł�Ȃ�ŕ󔠂ɂ���z�H";
global.item_point[8] = 9450;

global.item_name[9] = "��΂̌���";
global.item_detail[9] = "�Ȃ�̕�΂��͂悭�킩��Ȃ����ǂ�����Ɖ��H����Βl�ł��̂ł�΁B";
global.item_point[9] = 16500;

global.item_name[10] = "���N�l�Q";
global.item_detail[10] = "������B���������B���ۂɌ����̂��ǂ����͕s���B���������ꂪ���N�l�Q���͒m��Ȃ��B�������������Ĕ������΂悢�̂��B";
global.item_point[10] = 33500;

global.item_name[11] = "�u���[�`�i���j";
global.item_detail[11] = "���ꂢ�Ȋۂ��΂��͂܂��Ă���u���[�`�B";
global.item_point[11] = 6500;

global.item_name[12] = "���{��";
global.item_detail[12] = "���m�̂Ƃ��鍑�Ŏg�p����Ă��鍂�i���̓����B�܂�ʂ�̂�����Ă��܂����E�E�E�B\\n���q�����\\";
global.item_point[12] = 0;

global.item_name[13] = "�t�F�j�b�N�X�̔�";
global.item_detail[13] = "���҂��݂����点��͂�����炵���B�ł�ǂ�����Ďg���̂��͉i���̃t�@���^�W�[�B";
global.item_point[13] = 48000;

global.item_name[14] = "������";
global.item_detail[14] = "���ʂɍ������Ȕ�����B�Z���u�߁B���̐l�����Ă���݂�������ɕ����������B";
global.item_point[14] = 23000;

global.item_name[15] = "�Δ�";
global.item_detail[15] = "�l�Êw�I�ɉ��l�̂��肻���ȐΔŁB���ɂ͂����ς�킩��Ȃ��B";
global.item_point[15] = 28000;

global.item_name[16] = "����";
global.item_detail[16] = "�̂��l���g����B���ė��H�p�[�e�B�[�ɏo�Ȃ���Ƃ��Ɏg�������ȉ��ʁB\\n�߂炦��ꂽ���ア�o���ɔ���\\n�̂��l�����̖��̎�E�E�Ƃ��H";
global.item_point[16] = 8000;

global.item_name[17] = "�����i�ԁj";
global.item_detail[17] = "�肢�Ɏg�������Ȑ����ʁB�����̉^���͂����Ɩ��g�B";
global.item_point[17] = 9000;

global.item_name[18] = "���u���^�[";
global.item_detail[18] = "����Ŕ����Ȃ����l������B�����镨�̓L���b�V���ł��肢���܂��B���g�͌��Ȃ��ł������B";
global.item_point[18] = 100;

global.item_name[19] = "���";
global.item_detail[19] = "�ǂ��̍��̂�̂��͒m��Ȃ����Ǎ������ȋ�݁B";
global.item_point[19] = 25000;

global.item_name[20] = "�l��";
global.item_detail[20] = "�Ȃ�܂����B�C����Ȃ���Ζ����͂킪�g�ł���B";
global.item_point[20] = 500;

global.item_name[21] = "�n�}";
global.item_detail[21] = "�����͍���\\n�ǂ��܂ł�ӎU�L����\\n�����ۂ���̒n�}�ł�\\n�l�ɂ�����Ⴛ�ꎩ�̂���\\n\\n�i�Ȍ�|�[�Y���ɒn�}���\\������܂��j";
global.item_point[21] = 0;

global.item_name[22] = "��p�b�̊p";
global.item_detail[22] = "���ۂ͂�����ւ�̓����Ƃ��̊p�Ȃ񂾂낤����\\n�Z���u�ǂ�̓��A���Ƃ����Ƃ����M����";
global.item_point[22] = 29000;

global.item_name[23] = "�w�A�o���h";
global.item_detail[23] = "������̃w�A�o���h�B���ʂɏd���Ďg���Â炻�����B";
global.item_point[23] = 20000;

global.item_name[24] = "���ӂ�";
global.item_detail[24] = "�����s�v�c�ȗ͂���߂��Ă���\\n�悤�Ȃ��Ȃ��悤�Ȃ��ӂ��B\\n������B�ɂ݂�����I�ȗ͂ł�����\\n�L�p�������Ȃ����c�O�Ȃ��疳���B";
global.item_point[24] = 10000;

global.item_name[25] = "�u���[�`�i���j";
global.item_detail[25] = "���ꂢ�Ȋۂ��΂��͂܂��Ă���u���[�`�B";
global.item_point[25] = 19500;

global.item_name[26] = "����";
global.item_detail[26] = "����̋�B��̂ԁB�[���ł͂Ȃ��B���S�z�ł͂Ȃ��悤���B";
global.item_point[26] = 33500;

global.item_name[27] = "�r��";
global.item_detail[27] = "�����̘r�ցB�������Ă������ʂ��t������͂��Ȃ��B";
global.item_point[27] = 12000;

global.item_name[28] = "�s�A�X";
global.item_detail[28] = "���ꂢ�ȃs�A�X�B���ǌ���J����̂��|���̂ŕt�������Ȃ��B\\n����ȂƂ���ɂ���Ȃ�āA�N�̂�̂��낤�E�E�E�B";
global.item_point[28] = 37500;

global.item_name[29] = "��L";
global.item_detail[29] = "�����~��\\n--------------------------------\\n�ŋ��̐��������ɂ͂ǂ�����΂����̂��B\\n�Ȃ�čl���邩��_���Ȃ񂾁B\\n��苭��������������R�s�[����΂����B";
global.item_point[29] = 500;

global.item_name[30] = "��";
global.item_detail[30] = "�W�߂Ċ��ł����΃G���A�̓r������n�߂�ꂽ�肷��񂾂낤��\\n���X���ʂȃI�����[�������Ă�������\\n�I�����[�������Ă��̓��̃i���o�[�����̂��Ƃ���ˁB";
global.item_point[30] = 1500;

global.item_name[31] = "�u���[�`(�ԁj";
global.item_detail[31] = "���ꂢ�Ȋۂ��΂��͂܂��Ă���u���[�`�B";
global.item_point[31] =12500;

global.item_name[32] = "���";
global.item_detail[32] = "����͂悢��̂�";
global.item_point[32] =42500;

global.item_name[33] = "���イ�e";
global.item_detail[33] = "���̃p�C�i�|�[�B�����Ďg�p����B\\n���q�����\\";
global.item_point[33] = 0;

global.item_name[34] = "�c�C���_�K�[";
global.item_detail[34] = "�萔�ŏ����B�Ƃɂ����؂�܂���B\\n���q�����\\";
global.item_point[34] = 0;

global.item_name[35] = "�V���b�g�K��";
global.item_detail[35] = "�ꌂ�K�E�ߐڏe�B���̃L���C�Ȋ��ӂ��Ƃ΂��Ă��܂��B\\n�ށX�����\\";
global.item_point[35] = 0;

global.item_name[36] = "�}�V���K��";
global.item_detail[36] = "�e���̓p���[�ł��B������Ζ�̖��ʌ����B\\n�ށX�����\\";
global.item_point[36] = 0;

global.item_name[37] = "�J�[�h�L�[�ƃT�u�}�V���K��";
global.item_detail[37] = "�Ȃ�炩�̔��J����J�[�h�L�[�B\\n�ꏏ�ɂ����Ă���T�u�}�V���K����\\n���肪���������������B\\n�����������͎g�����R�͂Ȃ��B\\n�T�u�}�V���K���ɂ͉����o���_�i���ۂ�\\n�����Ə����ꂽ�z�������Ă���B";
global.item_point[37] = 0;

/* */
{
    if(global.sevolume!=0) sound_global_volume(1+log10(global.sevolume));
    else                   sound_global_volume(0);
}

/* */
action_font(Chinecaption, 0);
text = "Finish...";
/* */
//screen_redraw();
/* */
action_next_room();
/*  */

