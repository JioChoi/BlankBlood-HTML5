function OpenMemory() {
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
	global.SprP_Atk_J[0] = sprite_add("pngs/Chara/1/Atk_J.png",10,1,0,48,48);
	global.SprP_AtkE_1[0] = sprite_add("pngs/Chara/1/AtkE_1.png",1,1,0,48,48);
	global.SprP_AtkE_2[0] = sprite_add("pngs/Chara/1/AtkE_2.png",1,1,0,48,48);
	global.SprP_AtkE_3[0] = sprite_add("pngs/Chara/1/AtkE_3.png",1,1,0,48,48);
	global.SprP_AtkE_4[0] = sprite_add("pngs/Chara/1/AtkE_4.png",1,1,0,48,48);
	global.SprP_AtkE_J[0] = sprite_add("pngs/Chara/1/AtkE_J.png",1,1,0,48,48);

	global.SprP_Damage_11[0] = sprite_add("pngs/Chara/1/Damage_11.png",5,1,0,48,48);
	global.SprP_Damage_21[0] = sprite_add("pngs/Chara/1/Damage_21.png",7,1,0,48,48);
	global.SprP_Damage_221[0] = sprite_add("pngs/Chara/1/Damage_221.png",2,1,0,48,48);
	global.SprP_Damage_222[0] = sprite_add("pngs/Chara/1/Damage_222.png",2,1,0,48,48);

	global.SprP_Bind_1[0] = sprite_add("pngs/Chara/1/Bind_1.png",8,1,0,48,48);
	global.SprP_Bind_2[0] = sprite_add("pngs/Chara/1/Bind_2.png",8,1,0,48,48);
	global.SprP_Bind_4[0] = sprite_add("pngs/Chara/1/Bind_4.png",5,1,0,48,48);

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
	global.SprP_Death_61[0] = sprite_add("pngs/Chara/1/Death_61.png",5,1,0,48,48);

	global.SprP_Death_Cut_1[0] = sprite_add("pngs/Chara/1/Death_Cut_1.png",1,1,0,14,14);

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
	global.SprP_jumpD_1[1] = sprite_add("pngs/Chara/2/jumpD_1.png",2,1,0,48,48);

	global.SprP_Atk_1[1] = sprite_add("pngs/Chara/2/Atk_1.png",12,1,0,40,40);
	global.SprP_Atk_2[1] = sprite_add("pngs/Chara/2/Atk_2.png",13,1,0,48,48);
	global.SprP_Atk_3[1] = sprite_add("pngs/Chara/2/Atk_3.png",9,1,0,15,9);
	global.SprP_Atk_4[1] = sprite_add("pngs/Chara/2/Atk_4.png",3,1,0,48,48);
	global.SprP_Atk_J[1] = sprite_add("pngs/Chara/2/Atk_J.png",24,1,0,48,48);
	global.SprP_AtkE_1[1] = sprite_add("pngs/Chara/2/AtkE_1.png",3,1,0,3,3);
	global.SprP_AtkE_2[1] = sprite_add("pngs/Chara/2/AtkE_2.png",1,1,0,3,5);
	global.SprP_AtkE_3[1] = sprite_add("pngs/Chara/2/AtkE_3.png",1,1,0,48,48);
	global.SprP_AtkE_4[1] = sprite_add("pngs/Chara/2/AtkE_4.png",15,1,0,48,48);
	global.SprP_AtkE_J[1] = sprite_add("pngs/Chara/2/AtkE_J.png",6,1,0,48,48);

	global.SprP_Damage_11[1] = sprite_add("pngs/Chara/2/Damage_11.png",5,1,0,48,48);
	global.SprP_Damage_21[1] = sprite_add("pngs/Chara/2/Damage_21.png",7,1,0,48,48);
	global.SprP_Damage_221[1] = sprite_add("pngs/Chara/2/Damage_221.png",2,1,0,48,48);
	global.SprP_Damage_222[1] = sprite_add("pngs/Chara/2/Damage_222.png",1,1,0,48,48);

	global.SprP_Bind_1[1] = sprite_add("pngs/Chara/2/Bind_1.png",8,1,0,48,48);
	global.SprP_Bind_2[1] = sprite_add("pngs/Chara/2/Bind_2.png",8,1,0,48,48);
	global.SprP_Bind_4[1] = sprite_add("pngs/Chara/2/Bind_4.png",5,1,0,48,48);

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
	global.SprP_Death_61[1] = sprite_add("pngs/Chara/2/Death_61.png",5,1,0,48,48);

	global.SprP_Death_Cut_1[1] = sprite_add("pngs/Chara/2/Death_Cut_1.png",1,1,0,10,19);
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

	global.SprE51_Atk_1 = sprite_add("pngs/Chara/Enemy/51/Atk_1.png",30,1,0,32,32);

	global.SprE52_Atk_1 = sprite_add("pngs/Chara/Enemy/52/Atk_1.png",17,1,0,16,96);
	global.SprE52_Finish_1 = sprite_add("pngs/Chara/Enemy/52/Finish_1.png",6,1,0,16,96);

	global.SprE53_Normal = sprite_add("pngs/Chara/Enemy/53/Normal.png",1,1,0,96,5);

	global.SprE54_Atk_1 = sprite_add("pngs/Chara/Enemy/54/Atk_1.png",32,1,0,192,8);
	global.SprE54_Finish_1 = sprite_add("pngs/Chara/Enemy/54/Finish_1.png",5,1,0,192,8);

	global.SprE55_Normal = sprite_add("pngs/Chara/Enemy/55/Normal.png",8,1,0,0,0);
	global.SprE55_Normal_2 = sprite_add("pngs/Chara/Enemy/55/Normal_2.png",8,1,0,0,0);
	global.SprE56_Normal = sprite_add("pngs/Chara/Enemy/56/Normal.png",60,0,0,0,0);
	/*----------------------Effects-------------------------*/
	text = "Loading EffectSpriteData...";
	//screen_redraw();

	global.SprRec_Item = sprite_add("pngs/Chara/Effect/Rec_Item.png",19,1,0,12,16);
	global.SprPoint_Item = sprite_add("pngs/Chara/Effect/Point_Item.png",38,1,0,12,16);
	global.SprEffect_Blood_01 = sprite_add("pngs/Chara/Effect/Blood_01.png",8,1,0,31,28);
	global.SprEffect_Blood_02 = sprite_add("pngs/Chara/Effect/Blood_02.png",8,1,0,62,57);
	global.SprEffect_Save_01 = sprite_add("pngs/Chara/Effect/Save_01.png",6,1,0,48,48);
	//sprite_set_alpha_from_sprite(global.SprEffect_Save_01,global.SprEffect_Save_01);
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
	global.SndBullet = Bullet;
	global.SndReload_1 = Reload_1;
	global.SndReload_2 = Reload_2;
	global.SndReload_3 = Reload_3;

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

	global.VicDmg_51[1] = global.VicDmg_01[1];
	global.VicDmg_52[1] = global.VicDmg_02[1];
	global.VicDmg_53[1] = global.VicDmg_03[1];
	global.VicDmg_54[1] = global.VicDmg_02[1];
	global.VicDmg_55[1] = Dmg_155;
	global.VicDmg_56[1] = global.VicDmg_56[0];
	global.VicDmg_57[1] = global.VicDmg_57[0];
	global.VicDmg_58[1] = global.VicDmg_58[0];
	global.VicDmg_59[1] = global.VicDmg_59[0];



}

