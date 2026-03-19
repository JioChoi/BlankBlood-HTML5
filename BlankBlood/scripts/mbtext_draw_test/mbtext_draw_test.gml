function mbtext_draw_test(argument0, argument1, argument2, argument3, argument4, argument5) {
	{
	   /********************************************************************************
	    * (ver 1.4.0)
	    * mbtext_draw_test(text, pos_x, pos_y, width, sep_x, sep_y)
	    *
	    * mbtext_draw�֐��Ƃ́u�����v��u�߂�l�v����������A�ȉ��̓_�ňقȂ�B
	    *
	    * 1. ���̊֐��͑S���`���s��Ȃ��B
	    * 2. �O���[�o���ϐ� mbtext_textarea_width ��
	    *    ���ۂɕ`�悵���e�L�X�g�̈�̑S�̂́u�����v��������B
	    *    �������A����`�悵�Ȃ������ꍇ��0��������B
	    *
	    * ���̊֐��́A���ۂɃe�L�X�g��`�悷��O�ɁA�`��̈�̕��ƍ�������Z���Ă���
	    * ���߂Ɏg���邱�Ƃ�z�肵�Ă���B
	    * �`�悪�s���Ȃ��̂ŁA��2,3����(pos_x, pos_y)�͂قƂ�ǈӖ����Ȃ��B
	    *
	    * ��)
	    * {
	    *    var text, text_width, text_height;
	    *
	    *    text = "�`�悵�����e�L�X�g\n���s�ł�OK";
	    *
	    *    mbtext_setfont(spr_z, spr_h, 20);
	    *    text_height = mbtext_draw_test(text, 0, 0, MAX_WIDTH, SEP_X, SEP_Y);
	    *    text_width = global.mbtext_textarea_width;
	    *
	    *    //�ȏ�ŁAtext_width�����text_height�ɕ`��̈�̕��ƍ�������������
	    * }
	    *
	    * ��MAX_WIDTH, SEP_X, SEP_Y �͍D�݂̐��l�ł��܂�Ȃ��B
	    *
	    * ���O���[�o���ϐ� mbtext_textarea_width �̕ϐ�����ύX����ɂ́A
	    *                                             �������������B
	    ********************************************************************************/
	   var global_width_name;
	   global_width_name = "mbtext_textarea_width";// �������̕�����
	   // initialize with zero
	   variable_global_set(global_width_name, 0);
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
	   var tmp_text_width; // _test�ŗL
	   // MAIN LOOP
	   for (i = 0; i < text_length; i += 1)
	   {
	      // �ȉ���2�s��_test�ŗL
	      tmp_text_width = (pos_x - sep_x - orig_pos_x);
	      variable_global_set(global_width_name, max(variable_global_get(global_width_name), tmp_text_width));
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
	         //draw_sprite_part(global.sprite_for_mb_zen, ........��
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
	            //draw_sprite_part(global.sprite_for_mb_han, 0, (code&15)*global.mbchar_size/2, ((code>>4)-2)*global.mbchar_size, global.mbchar_size/2, global.mbchar_size, pos_x, pos_y);
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
	   // �ȉ���2�s��_test�ŗL
	   tmp_text_width = (pos_x - sep_x - orig_pos_x);
	   variable_global_set(global_width_name, max(variable_global_get(global_width_name), tmp_text_width));
	   if (isFlushed)
	   {
	      if (orig_pos_x == pos_x) return (pos_y-sep_y - orig_pos_y); // ��ԉ���"\n"������1�s�͍����Ƃ��Đ����Ȃ�
	      else return (pos_y+global.mbchar_size - orig_pos_y);        // ���s�������1�����ȏ�`�悵�Ă���ꍇ
	   } else {
	      return global.mbchar_size;  // 1�s���������`�悵���ꍇ
	   }
	}




}
