function mbtext_draw(argument0, argument1, argument2, argument3, argument4, argument5) {
	{
	   /********************************************************************************
	    * (ver 1.4.0)
	    * mbtext_draw(text, pos_x, pos_y, width, sep_x, sep_y)
	    *
	    * �S�p�e�L�X�g��`�悷��֐��B
	    *
	    * -string text  : �`�悷�镶����B
	    *                  "\n"�͉��s�ɕϊ������B
	    *                  "\n"��\������ɂ́A�����"\\n"��n���B
	    * -int    pos_x : �`���J�n����x���W (�w�薳����0)
	    * -int    pos_y : �`���J�n����y���W (�w�薳����0)
	    * -int    width : �`��̈�̍ő啝�B���̕��𒴂������ɂȂ�Ǝ����ŉ��s�����B
	    *                 0�ȉ��̒l��w�肷��Ɩ����� (�w�薳���ł������)�B
	    *                 width��1�����̕��������Ă����Ȃ�A����`�悳��Ȃ��B
	    * -int    sep_x : ���ׂ̕����Ƃ̊Ԃ���s�N�Z���󂯂邩 (�w�薳����0)
	    * -int    sep_y : �㉺�̕����Ƃ̊Ԃ���s�N�Z���󂯂邩 (�w�薳����0)
	    *
	    * return        : �`�悵���̈�̍��� (1������`�悵�Ă��Ȃ��ꍇ0)
	    ********************************************************************************/
	   // altern variables of the parameters
	   var text, pos_x, pos_y, width, sep_x, sep_y;
	   // handle and validate the parameters
	   if (argument3 > 0) {
	      if (argument3 < global.mbchar_size) return 0;
	      width = argument3;
	   } else {
	      width = 0;
	   }
	   if (is_string(argument0)) {
	      // "\n"����s(CRLF)�ɕϊ�����B������"\\n"��"\n"�Ƃ��Ďc��
	      var dummy; dummy = chr(15)+chr(15);
	      text = string_replace_all(string_replace_all(
	               string_replace_all(argument0, "\\\\n", dummy),
	               "\\n", chr(13)+chr(10)), dummy, "\\n");
	      var text_length; text_length = string_length(text);
	      if (text_length == 0) return 0;
	   } else {
	      return 0;
	   }
	   if (is_real(argument1)) pos_x = argument1; else pos_x = 0;
	   if (is_real(argument2)) pos_y = argument2; else pos_y = 0;
	   if (is_real(argument4)) sep_x = argument4; else sep_x = 0;
	   if (is_real(argument5)) sep_y = argument5; else sep_y = 0;
	   // prepare temporary variables
	   var i;                              // for for.
	   var orig_pos_x; orig_pos_x = pos_x; // ���s������̂��߂�x�J�n�ʒu��o���Ƃ��B
	   var orig_pos_y; orig_pos_y = pos_y; // �`��̈�̍����̌v�Z�̂��߂�y�J�n�ʒu��o���Ƃ��B
	   var mode; mode = 0;                 // 3:���s���[�h�A2:�S�p���[�h�A1:���p���[�h�A0:�s��
	   var prev_code, code;                // 1byte�O��code, ���݂�code
	   var isFlushed; isFlushed = false;   // ��x�ł���s�������ǂ���
	   var zenIndexSubImage;               // �u�@�v�ȍ~�̕����̏ꍇ�Aindex��-2����
	   // MAIN LOOP
	   for (i = 0; i < text_length; i += 1)
	   {
	      code = ord(string_char_at(text, i+1));
	      switch (mode)
	      {
	      // �Obyte�őS�p���[�h�ɂȂ��Ă�����
	      case 2:
	         if ((width != 0) && (pos_x+global.mbchar_size > orig_pos_x+width))
	         {
	            // �ő啝�𒴂������Ȃ̂ŉ��s�B
	            pos_y += global.mbchar_size + sep_y;
	            pos_x = orig_pos_x;
	            isFlushed = true;
	         }         
	         zenIndexSubImage = prev_code-129;
	         if (zenIndexSubImage >= 4)
	         {
	            zenIndexSubImage -= 2;  // �u�@�v�ȍ~�̕����Ȃ̂�
	         }
	         draw_sprite_part(global.sprite_for_mb_zen, zenIndexSubImage, (code&15)*global.mbchar_size, ((code>>4)-4)*global.mbchar_size, global.mbchar_size, global.mbchar_size, pos_x, pos_y);
	         pos_x += global.mbchar_size + sep_x;  // �S�p1�����ƃZ�p���[�^�̕������E�ɐi�߂Ă���
	         mode = 0; // ���[�h����Z�b�g���Ă���
	         continue;
	      // �Obyte��'\r'�������Ȃ�
	      case 3:
	         if (code==10)
	         {
	            // '\r\n'����������̂ŉ��s�B
	            pos_y += global.mbchar_size + sep_y;
	            pos_x = orig_pos_x;
	            isFlushed = true;
	         }
	         mode = 0; // ���[�h����Z�b�g���Ă���
	         continue;
	      // ���p���[�hor�������[�h�Ȃ�
	      default:
	         if ((code>=32)&&(code<=126))
	         {
	            mode = 1;  // ���p���[�h
	            if ((width != 0) && (pos_x+(global.mbchar_size/2) > orig_pos_x+width))
	            {
	               // �ő啝�𒴂������Ȃ̂ŉ��s�B
	               pos_y += global.mbchar_size + sep_y;
	               pos_x = orig_pos_x;
	               isFlushed = true;
	            }
	            draw_sprite_part(global.sprite_for_mb_han, 0, (code&15)*global.mbchar_size/2, ((code>>4)-2)*global.mbchar_size, global.mbchar_size/2, global.mbchar_size, pos_x, pos_y);
	            pos_x += global.mbchar_size/2 + sep_x;  // ���p1�����ƃZ�p���[�^�̕������E�ɐi�߂Ă���
	            continue;
	         }
	         else if ((code>=129)&&(code<=152))
	         {
	            mode = 2; // �S�p���[�h
	            prev_code = code;
	            continue;
	         }
	         else if (code == 13) // '\r'
	         {
	            // �u��byte��'\n'�Ȃ���s���Ă���v���[�h
	            mode = 3;
	            continue;
	         }
	         else
	         {
	            mode = 0; // �`��ł��Ȃ������B
	            continue;
	         }
	      } // end of SWITCH
	   } // end of FOR
	   if (isFlushed)
	   {
	      if (orig_pos_x == pos_x) return (pos_y-sep_y - orig_pos_y); // ��ԉ���"\n"������1�s�͍����Ƃ��Đ����Ȃ�
	      else return (pos_y+global.mbchar_size - orig_pos_y);        // ���s�������1�����ȏ�`�悵�Ă���ꍇ
	   } else {
	      return global.mbchar_size;  // 1�s���������`�悵���ꍇ
	   }
	}




}
