var amt;
with(objE103_Last){ amt = amount; }

flag = 1;
sound_play(global.SndShot_1);
move_contact_solid(direction,600);
x=x+10*cos(degtorad(direction));y=y-10*sin(degtorad(direction));

	// �J�E���^������
	cnt = 0;
	// �^�[�Q�b�g�ƂȂ�I�u�W�F�N�g�̃C���X�^���X��T��
	col2 = collision_line(pre_x,pre_y,x,y,objBarricade,0,1);
	while (col2 != noone) {
		with(col2){
			if(flag){
				inst = instance_create(other.x-5+random(10),other.y-5+random(10),objSpark);
				inst.image_angle = other.direction+180;
				HP -= 1;
				if(HP<=0) alarm[11] = 1;
				sound_play(global.SndHit_00);
				sound_atk(kind);
			}
		}
		// ���������C���X�^���X��instance_id��L�^���āA�f�B�A�N�e�B�u�ɂ���
		array_hitid[cnt] = col2;
		cnt += 1;
		instance_deactivate_object(col2); 

		// ���̃^�[�Q�b�g�ƂȂ�I�u�W�F�N�g�̃C���X�^���X��T��
		col2 = collision_line(pre_x,pre_y,x,y,objBarricade,0,1);
	}
	var i;
	if (cnt) {for (i=0; i<cnt; i+=1) instance_activate_object(array_hitid[i]);}

	// �J�E���^������
	cnt = 0;
	// �^�[�Q�b�g�ƂȂ�I�u�W�F�N�g�̃C���X�^���X��T��
	col = collision_line(pre_x,pre_y,x,y,objEnemy,0,1);
	while (col != noone) {
		with(col){
			inst = instance_create(x-15+random(30),y-15+random(30),objSpark);
			inst.image_angle = other.direction+180;
			if(90<other.direction && other.direction<270) hspd = -200/weight;
			else  hspd = 200/weight;
			HP -= 55+random(10);
			if(HP<=0){
				alarm[11] = 2;
				if(bind && !global.retry) global.bind = -100;
			}
			sound_play(global.SndHit_02);
			sound_atk(kind);
		}
		// ���������C���X�^���X��instance_id��L�^���āA�f�B�A�N�e�B�u�ɂ���
		array_hitid[cnt] = col;
		global.assist = col;
		cnt += 1;
		instance_deactivate_object(col); 

		// ���̃^�[�Q�b�g�ƂȂ�I�u�W�F�N�g�̃C���X�^���X��T��
		col = collision_line(pre_x,pre_y,x,y,objEnemy,0,1);
	}
	var i;
	if (cnt) {for (i=0; i<cnt; i+=1) instance_activate_object(array_hitid[i]);}

	col = collision_line(pre_x+amt+64,pre_y-250,x+amt+64,y-250,objE103_Last,0,1);
	if(global.distance>1800) col = noone;
	with(col){
		amount -= 25;
		Particle(global.SprEffect_Particle[20],other.x,other.y,15,30,30,0.98,70,80,5,20,30,20,0.1,0.4,1);
		sound_play(global.SndHit_02);
		sound_atk(kind);
	}

