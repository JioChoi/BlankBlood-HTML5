action_set_relative(1);
action_effect(0, 0, 0, 1, 0, 0);
action_effect(0, 0, 0, 1, 33023, 0);
var targetid, array_hitid, cnt;
var col,col2;
//  target id : collision_circle�Ō�����A�����蔻��Ώۂ̃I�u�W�F�N�g�̃C���X�^���XID
//  hitid      :  targetid �����蔻��Ō������C���X�^���XID�̕ۑ��p�z��
//  cnt       : �����蔻��Ō������C���X�^���X���̃J�E���^

	with(objNormal){
		if(x<other.x){
			other.dir = 0;
		}else if(x>other.x){
			other.dir = 1;
		}
	}
	sound_play(global.SndHit_11);
	col = collision_circle(x,y,64,objNormal,0,1);
	with(col){
		if(!inv){
			if(global.HP[global.chara]/global.HPMAX[global.chara] < 0.66){
				dmgkind = 22;
				deadkind = 0;
				pow = 40;
				if(other.dir) direct = 10;
				else direct = rev_angle(10);
			}else{
				dmgkind = 21;
				deadkind = 10;
				pow = 30;
				if(other.dir) direct = 0;
				else direct = rev_angle(0);
			}
			cutkind = 0;
			global.HP[global.chara] -= 20+random(5);
			sound_play(global.SndHit_04);
			step = 0;
			if(global.HP[global.chara]<=0) alarm[11] = 1;
			instance_change(objDamage,false);
		}
	}

	// �J�E���^������
	cnt = 0;
	// �^�[�Q�b�g�ƂȂ�I�u�W�F�N�g�̃C���X�^���X��T��
	col = collision_circle(x,y,64,objEnemy,0,1);
	while (col != noone) {
		with(col){
			if(x<other.x){
				other.dir = 0;
			}else if(x>other.x){
				other.dir = 1;
			}

			if(other.dir) hspd = 100/weight;
			else direct = hspd = -100/weight;
				
			HP -= 180+random(60);
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
		col = collision_circle(x,y,64,objEnemy,0,1);
	}
	var i;
	if (cnt) {for (i=0; i<cnt; i+=1) instance_activate_object(array_hitid[i]);}
action_kill_object();
action_set_relative(0);
