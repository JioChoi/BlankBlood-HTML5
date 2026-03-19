action_set_alarm(160, 0);
MusicPlay();

amount = 0;
i=0;
Text[0] = "BlankBlood";
Text[1] = "";
Text[2] = "-����-\\n\\n�T�L";
Text[3] = "-�G�Ƃ�-\\n\\n�T�L";
Text[4] = "-�v���O�����Ƃ�-\\n\\n�T�L";
Text[5] = "-�e�X�g�v���C-\\n\\n����͂��������";
Text[6] = "-����c�[��-\\n\\nGamemaker";
Text[7] = "-����-\\n\\n�����i�Q�[�����쏊\\n�u���a��";
Text[8] = "-���y-\\n\\n�������l\\nPianos DauGe�l\\n�������l";
Text[9] = "";
Text[10] = "\\nEND.. Thank you for playing.\\n\\nBackSpace�ł��̂܂܃^�C�g����\\nEnter�ŃZ�[�u���ă^�C�g����";

view = false;

item_num = 0;
item_price = 0;
for(j=0;j<100;j+=1){
	if(global.item_flag[j]) item_price += global.item_point[j];
	item_num += global.item_flag[j];
}
