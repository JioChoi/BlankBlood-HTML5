var inst;
	if(left == 2){
		if(dashKey == 1){
			if(!air){
				if(place_free(x-run-1,y)) x -= run;
			}
			dash = true;
			dashKey = 0;
		}else{
			dashKey = 1;
			alarm[0] = 10;
		}
	}else if(left == 3){
		dash = false;
	}else if(left == 1){
		if(dash){
			if(place_free(x-run-1,y)){
				move = 1;
				dir = 0;
				x -= run;
			}
		}else{
			if(place_free(x-walk-1,y)){
				move = 1;
				dir = 0;
				x -= walk;
			}
		}
	}

	if(right == 2){
		if(dashKey == 2){
			if(!air){
				if(place_free(x+run+1,y)) x += run;
			}
			dash = true;
			dashKey = 0;
		}else{
			dashKey = 2;
			alarm[0] = 10;
		}
	}else if(right == 3){
		dash = false;
	}else if(right == 1){
		if(dash){
			if(place_free(x+run+1,y)){
				move = 1;
				dir = 1;
				x += run;
			}
		}else{
			if(place_free(x+walk+1,y)){
				move = 1;
				dir = 1;
				x += walk;
			}
		}
	}
var targetid, array_hitid, cnt;
var col,col2;
//  target id : collision_circle�Ō�����A�����蔻��Ώۂ̃I�u�W�F�N�g�̃C���X�^���XID
//  hitid      :  targetid �����蔻��Ō������C���X�^���XID�̕ۑ��p�z��
//  cnt       : �����蔻��Ō������C���X�^���X���̃J�E���^

if(step != 0 && b1==2) combo = 1;

if(!air && step!=0){
	combo = 0;
	instance_change(objNormal,false);
}

if(step==4){
	// �J�E���^������
	cnt = 0;
	// �^�[�Q�b�g�ƂȂ�I�u�W�F�N�g�̃C���X�^���X��T��
	col2 = collision_circle(x,y+32,80,objBreakBlock,0,1);
	while (col2 != noone) {
		with(col2){
			HP -= 30+random(10);
			if(HP<=0) alarm[11] = 1;
			sound_play(global.SndHit_00);
			sound_atk(kind);
		}
		// ���������C���X�^���X��instance_id��L�^���āA�f�B�A�N�e�B�u�ɂ���
		array_hitid[cnt] = col2;
		cnt += 1;
		instance_deactivate_object(col2); 

		// ���̃^�[�Q�b�g�ƂȂ�I�u�W�F�N�g�̃C���X�^���X��T��
		col2 = collision_circle(x,y+32,80,objBreakBlock,0,1);
	}
	var i;
	if (cnt) {for (i=0; i<cnt; i+=1) instance_activate_object(array_hitid[i]);}
}

if(step == 3){
	switch (round(random(2)))
	{
	case 0: sound_play(global.SndSwing_1); break;
	case 1: sound_play(global.SndSwing_2); break;
	case 2: sound_play(global.SndSwing_3); break;
	default: break;
	}

	if(!dir){
		// �J�E���^������
		cnt = 0;
		// �^�[�Q�b�g�ƂȂ�I�u�W�F�N�g�̃C���X�^���X��T��
		col = collision_circle(x,y+32,60,objEnemy,0,1);
		while (col != noone) {
			with(col){
				HP -= 50+random(10);
				if(HP<=0) alarm[11] = 2;
				sound_play(global.SndHit_00);
				sound_atk(kind);
			}
			// ���������C���X�^���X��instance_id��L�^���āA�f�B�A�N�e�B�u�ɂ���
			array_hitid[cnt] = col;
			global.assist = col;
			cnt += 1;
			instance_deactivate_object(col); 

			// ���̃^�[�Q�b�g�ƂȂ�I�u�W�F�N�g�̃C���X�^���X��T��
			col = collision_circle(x,y+32,60,objEnemy,0,1);
		}
		var i;
		if (cnt) {for (i=0; i<cnt; i+=1) instance_activate_object(array_hitid[i]);}
	}else{
		// �J�E���^������
		cnt = 0;
		// �^�[�Q�b�g�ƂȂ�I�u�W�F�N�g�̃C���X�^���X��T��
		col = collision_circle(x,y+32,60,objEnemy,0,1);
		while (col != noone) {
			with(col){
				HP -= 50+random(10);
				if(HP<=0) alarm[11] = 2;
				sound_play(global.SndHit_00);
				sound_atk(kind);
			}
			// ���������C���X�^���X��instance_id��L�^���āA�f�B�A�N�e�B�u�ɂ���
			array_hitid[cnt] = col;
			global.assist = col;
			cnt += 1;
			instance_deactivate_object(col); 

			// ���̃^�[�Q�b�g�ƂȂ�I�u�W�F�N�g�̃C���X�^���X��T��
			col = collision_circle(x,y+32,60,objEnemy,0,1);
		}
		var i;
		if (cnt) {for (i=0; i<cnt; i+=1) instance_activate_object(array_hitid[i]);}
	}
}else if(14<step){
	combo = 0;
	instance_change(objNormal,false);
}

step += 1;
