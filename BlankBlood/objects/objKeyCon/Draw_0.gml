action_draw_gradient_vert(0, 320, 512, 360, 255, 0);
action_color(255);
action_draw_text_transformed("BlankBlood", 260, 100, 2, 2, 10);
x = __view_get( e__VW.XView, 0 )+55;
y = __view_get( e__VW.YView, 0 )+20;
    draw_set_alpha(0.5);
    draw_rectangle_color(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),c_black,c_black,c_black,c_black,false);
    draw_set_alpha(0.3);
    draw_rectangle_color(x,y,x+400,y+270,c_black,c_black,c_black,c_black,false);
    draw_set_alpha(1);
    if(cur == 0) mbtext_draw("��",x+50,y+30,0,0,0);
    mbtext_draw("�L�[�ݒ�",x+80,y+30,0,0,0);

    if(!global.ctrlmode){

        if(cur2==1) mbtext_draw(">",x+80,y+70,0,0,0);
        if(cur2==2) mbtext_draw(">",x+80,y+90,0,0,0);
        if(cur2==3) mbtext_draw(">",x+80,y+110,0,0,0);
        if(cur2==4) mbtext_draw(">",x+80,y+130,0,0,0);
        if(cur2==5) mbtext_draw(">",x+80,y+150,0,0,0);
        if(cur2==6) mbtext_draw(">",x+80,y+170,0,0,0);
        if(cur2==7) mbtext_draw(">",x+80,y+190,0,0,0);
        if(cur2==8) mbtext_draw(">",x+210,y+70,0,0,0);
        if(cur2==9) mbtext_draw(">",x+210,y+90,0,0,0);
        if(cur2==10) mbtext_draw(">",x+210,y+110,0,0,0);
        if(cur2==11) mbtext_draw(">",x+210,y+130,0,0,0);
        if(cur2==12) mbtext_draw(">",x+210,y+190,0,0,0);

        mbtext_draw("���q",x+100,y+50,0,0,0); 
        mbtext_draw("�� :   "+string(global.key[0]),x+100,y+70,0,0,0);
        mbtext_draw("�� :   "+string(global.key[1]),x+100,y+90,0,0,0);
        mbtext_draw("�� :   "+string(global.key[2]),x+100,y+110,0,0,0);
        mbtext_draw("�� :   "+string(global.key[3]),x+100,y+130,0,0,0);
        mbtext_draw("�P :   "+string(global.key[4]),x+100,y+150,0,0,0);
        mbtext_draw("�Q :   "+string(global.key[5]),x+100,y+170,0,0,0);
        mbtext_draw("�R :   "+string(global.key[6]),x+100,y+190,0,0,0);

        mbtext_draw("�ށX",x+230,y+50,0,0,0); 
        mbtext_draw("�� :   "+string(global.key[10]),x+230,y+70,0,0,0);
        mbtext_draw("�� :   "+string(global.key[11]),x+230,y+90,0,0,0);
        mbtext_draw("�� :   "+string(global.key[12]),x+230,y+110,0,0,0);
        mbtext_draw("�� :   "+string(global.key[13]),x+230,y+130,0,0,0);

        mbtext_draw("����",x+230,y+170,0,0,0);    
        mbtext_draw("�S :   "+string(global.key[7]),x+230,y+190,0,0,0);
    }else{
        if(cur2==1) mbtext_draw(">",x+80,y+70,0,0,0);
        if(cur2==2) mbtext_draw(">",x+80,y+90,0,0,0);
        if(cur2==3) mbtext_draw(">",x+80,y+110,0,0,0);
        if(cur2==4) mbtext_draw(">",x+80,y+130,0,0,0);
        if(cur2==5) mbtext_draw(">",x+80,y+150,0,0,0);
        if(cur2==6) mbtext_draw(">",x+80,y+170,0,0,0);
        if(cur2==7) mbtext_draw(">",x+80,y+190,0,0,0);

        mbtext_draw("�P :   "+string(global.key[14]),x+100,y+70,0,0,0);
        mbtext_draw("�Q :   "+string(global.key[15]),x+100,y+90,0,0,0);
        mbtext_draw("�R :   "+string(global.key[16]),x+100,y+110,0,0,0);
        mbtext_draw("�S :   "+string(global.key[17]),x+100,y+130,0,0,0);
        mbtext_draw("�L�����`�F���W�@�@�@�@�@:   "+string(global.key[18]),x+100,y+150,0,0,0);
        mbtext_draw("�ꎞ��~�@�@�@�@�@�@�@�@:   "+string(global.key[19]),x+100,y+170,0,0,0);
        mbtext_draw("����E���b�Z�[�W�����@�@:   "+string(global.key[20]),x+100,y+190,0,0,0);
    }

    if(cur == 1) mbtext_draw("��",x+50,y+220,0,0,0);
    mbtext_draw("���͋@�� : ",x+80,y+220,0,0,0);
    if(!global.ctrlmode) mbtext_draw("�L�[�{�[�h/�}�E�X",x+200,y+220,0,0,0);
    else mbtext_draw("�W���C�p�b�h",x+200,y+220,0,0,0);

    if(cur == 2) mbtext_draw("��",x+50,y+240,0,0,0);
    mbtext_draw("�a�f�l���� : ",x+80,y+240,0,0,0);
    mbtext_draw(string(round(global.volume*100))+"%",x+200,y+240,0,0,0);

    if(cur == 3) mbtext_draw("��",x+50,y+260,0,0,0);
    mbtext_draw("�r�d���� : ",x+80,y+260,0,0,0);
    mbtext_draw(string(round(global.sevolume*100))+"%",x+200,y+260,0,0,0);

    if(cur == 4) mbtext_draw("��",x+50,y+280,0,0,0);
    mbtext_draw("Helper : ",x+80,y+280,0,0,0);
    if(global.helper) mbtext_draw("ON",x+200,y+280,0,0,0);
    else mbtext_draw("OFF",x+200,y+280,0,0,0);

    if(cur == 5) mbtext_draw("��",x+50,y+300,0,0,0);
    mbtext_draw("Exit",x+80,y+300,0,0,0);

