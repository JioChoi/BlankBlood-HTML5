function Golem_Bind() {
	{
		col = 0;
		if(step_t!=0){
			if(mot_damt_00[motion,step_t]){
				if(dir)col = collision_line(x+mot_posx_00[motion,step_t],y+mot_posy_00[motion,step_t],x+mot_posx_00[motion,step_t-1],y+mot_posy_00[motion,step_t-1],objNormal,0,1);
				else col = collision_line(x-mot_posx_00[motion,step_t],y+mot_posy_00[motion,step_t],x-mot_posx_00[motion,step_t-1],y+mot_posy_00[motion,step_t-1],objNormal,0,1);
				with(col){
					if(!global.bind && !inv){
						other.bind = 100;
						global.bind = 100;
						cutkind = 0;
						dmgkind = other.mot_dmg_00[other.motion,other.step_t];
						deadkind = other.mot_dead_00[other.motion,other.step_t];
						bindkind = other.mot_bind_00[other.motion,other.step_t];
						speed = other.mot_atkspd_00[other.motion,other.step_t];
						direction = other.mot_atkdir_00[other.motion,other.step_t];
						global.HP[global.chara] -= other.mot_damt_00[other.motion,other.step_t]+random(5);

						sound_play(global.SndHit_05);
	
						step = 0;
						premouse_x = mouse_x;
						premouse_y = mouse_y;
						instance_change(objBind,false);
					}
				}
			}
			if(mot_damt_01[motion,step_t]){
				if(dir)col = collision_line(x+mot_posx_01[motion,step_t],y+mot_posy_01[motion,step_t],x+mot_posx_01[motion,step_t-1],y+mot_posy_01[motion,step_t-1],objNormal,0,1);
				else col = collision_line(x-mot_posx_01[motion,step_t],y+mot_posy_01[motion,step_t],x-mot_posx_01[motion,step_t-1],y+mot_posy_01[motion,step_t-1],objNormal,0,1);
				with(col){
					if(!global.bind && !inv){
						other.bind = 100;
						global.bind = 100;
						cutkind = 0;
						dmgkind = other.mot_dmg_01[other.motion,other.step_t];
						deadkind = other.mot_dead_01[other.motion,other.step_t];
						bindkind = other.mot_bind_01[other.motion,other.step_t];
						speed = other.mot_atkspd_01[other.motion,other.step_t];
						direction = other.mot_atkdir_01[other.motion,other.step_t];
						global.HP[global.chara] -= other.mot_damt_01[other.motion,other.step_t]+random(5);

						sound_play(global.SndHit_05);
	
						step = 0;
						premouse_x = mouse_x;
						premouse_y = mouse_y;
						instance_change(objBind,false);
					}
				}
			}
			if(mot_damt_02[motion,step_t]){
				if(dir)col = collision_line(x+mot_posx_02[motion,step_t],y+mot_posy_02[motion,step_t],x+mot_posx_02[motion,step_t-1],y+mot_posy_02[motion,step_t-1],objNormal,0,1);
				else col = collision_line(x-mot_posx_02[motion,step_t],y+mot_posy_02[motion,step_t],x-mot_posx_02[motion,step_t-1],y+mot_posy_02[motion,step_t-1],objNormal,0,1);
				with(col){
					if(!global.bind && !inv){
						other.bind = 100;
						global.bind = 100;
						cutkind = 0;
						dmgkind = other.mot_dmg_02[other.motion,other.step_t];
						deadkind = other.mot_dead_02[other.motion,other.step_t];
						bindkind = other.mot_bind_02[other.motion,other.step_t];
						speed = other.mot_atkspd_02[other.motion,other.step_t];
						direction = other.mot_atkdir_02[other.motion,other.step_t];
						global.HP[global.chara] -= other.mot_damt_02[other.motion,other.step_t]+random(5);

						sound_play(global.SndHit_05);
	
						step = 0;
						premouse_x = mouse_x;
						premouse_y = mouse_y;
						instance_change(objBind,false);
					}
				}
			}

			if(mot_damt_03[motion,step_t]){
				if(dir)col = collision_line(x+mot_posx_03[motion,step_t],y+mot_posy_03[motion,step_t],x+mot_posx_03[motion,step_t-1],y+mot_posy_03[motion,step_t-1],objNormal,0,1);
				else col = collision_line(x-mot_posx_03[motion,step_t],y+mot_posy_03[motion,step_t],x-mot_posx_03[motion,step_t-1],y+mot_posy_03[motion,step_t-1],objNormal,0,1);
				with(col){
					if(!global.bind && !inv){
						other.bind = 100;
						global.bind = 100;
						cutkind = 0;
						dmgkind = other.mot_dmg_03[other.motion,other.step_t];
						deadkind = other.mot_dead_03[other.motion,other.step_t];
						bindkind = other.mot_bind_03[other.motion,other.step_t];
						speed = other.mot_atkspd_03[other.motion,other.step_t];
						direction = other.mot_atkdir_03[other.motion,other.step_t];
						global.HP[global.chara] -= other.mot_damt_03[other.motion,other.step_t]+random(5);

						sound_play(global.SndHit_05);
	
						step = 0;
						premouse_x = mouse_x;
						premouse_y = mouse_y;
						instance_change(objBind,false);
					}
				}
			}
			if(mot_damt_04[motion,step_t]){
				if(dir)col = collision_line(x+mot_posx_04[motion,step_t],y+mot_posy_04[motion,step_t],x+mot_posx_04[motion,step_t-1],y+mot_posy_04[motion,step_t-1],objNormal,0,1);
				else col = collision_line(x-mot_posx_04[motion,step_t],y+mot_posy_04[motion,step_t],x-mot_posx_04[motion,step_t-1],y+mot_posy_04[motion,step_t-1],objNormal,0,1);
				with(col){
					if(!global.bind && !inv){
						other.bind = 100;
						global.bind = 100;
						cutkind = 0;
						dmgkind = other.mot_dmg_04[other.motion,other.step_t];
						deadkind = other.mot_dead_04[other.motion,other.step_t];
						bindkind = other.mot_bind_04[other.motion,other.step_t];
						speed = other.mot_atkspd_04[other.motion,other.step_t];
						direction = other.mot_atkdir_04[other.motion,other.step_t];
						global.HP[global.chara] -= other.mot_damt_04[other.motion,other.step_t]+random(5);

						sound_play(global.SndHit_05);
	
						step = 0;
						premouse_x = mouse_x;
						premouse_y = mouse_y;
						instance_change(objBind,false);
					}
				}
			}
			if(mot_damt_05[motion,step_t]){
				if(dir)col = collision_line(x+mot_posx_05[motion,step_t],y+mot_posy_05[motion,step_t],x+mot_posx_05[motion,step_t-1],y+mot_posy_05[motion,step_t-1],objNormal,0,1);
				else col = collision_line(x-mot_posx_05[motion,step_t],y+mot_posy_05[motion,step_t],x-mot_posx_05[motion,step_t-1],y+mot_posy_05[motion,step_t-1],objNormal,0,1);
				with(col){
					if(!global.bind && !inv){
						other.bind = 100;
						global.bind = 100;
						cutkind = 0;
						dmgkind = other.mot_dmg_05[other.motion,other.step_t];
						deadkind = other.mot_dead_05[other.motion,other.step_t];
						bindkind = other.mot_bind_05[other.motion,other.step_t];
						speed = other.mot_atkspd_05[other.motion,other.step_t];
						direction = other.mot_atkdir_05[other.motion,other.step_t];
						global.HP[global.chara] -= other.mot_damt_05[other.motion,other.step_t]+random(5);

						sound_play(global.SndHit_05);
	
						step = 0;
						premouse_x = mouse_x;
						premouse_y = mouse_y;
						instance_change(objBind,false);
					}
				}
			}
			if(mot_damt_06[motion,step_t]){
				if(dir)col = collision_line(x+mot_posx_06[motion,step_t],y+mot_posy_06[motion,step_t],x+mot_posx_06[motion,step_t-1],y+mot_posy_06[motion,step_t-1],objNormal,0,1);
				else col = collision_line(x-mot_posx_06[motion,step_t],y+mot_posy_06[motion,step_t],x-mot_posx_06[motion,step_t-1],y+mot_posy_06[motion,step_t-1],objNormal,0,1);
				with(col){
					if(!global.bind && !inv){
						other.bind = 100;
						global.bind = 100;
						cutkind = 0;
						dmgkind = other.mot_dmg_06[other.motion,other.step_t];
						deadkind = other.mot_dead_06[other.motion,other.step_t];
						bindkind = other.mot_bind_06[other.motion,other.step_t];
						speed = other.mot_atkspd_06[other.motion,other.step_t];
						direction = other.mot_atkdir_06[other.motion,other.step_t];
						global.HP[global.chara] -= other.mot_damt_06[other.motion,other.step_t]+random(5);

						sound_play(global.SndHit_05);
	
						step = 0;
						premouse_x = mouse_x;
						premouse_y = mouse_y;
						instance_change(objBind,false);
					}
				}
			}
			if(mot_damt_07[motion,step_t]){
				if(dir)col = collision_line(x+mot_posx_07[motion,step_t],y+mot_posy_07[motion,step_t],x+mot_posx_07[motion,step_t-1],y+mot_posy_07[motion,step_t-1],objNormal,0,1);
				else col = collision_line(x-mot_posx_07[motion,step_t],y+mot_posy_07[motion,step_t],x-mot_posx_07[motion,step_t-1],y+mot_posy_07[motion,step_t-1],objNormal,0,1);
				with(col){
					if(!global.bind && !inv){
						other.bind = 100;
						global.bind = 100;
						cutkind = 0;
						dmgkind = other.mot_dmg_07[other.motion,other.step_t];
						deadkind = other.mot_dead_07[other.motion,other.step_t];
						bindkind = other.mot_bind_07[other.motion,other.step_t];
						speed = other.mot_atkspd_07[other.motion,other.step_t];
						direction = other.mot_atkdir_07[other.motion,other.step_t];
						global.HP[global.chara] -= other.mot_damt_07[other.motion,other.step_t]+random(5);

						sound_play(global.SndHit_05);
	
						step = 0;
						premouse_x = mouse_x;
						premouse_y = mouse_y;
						instance_change(objBind,false);
					}
				}
			}
			if(mot_damt_08[motion,step_t]){
				if(dir)col = collision_line(x+mot_posx_08[motion,step_t],y+mot_posy_08[motion,step_t],x+mot_posx_08[motion,step_t-1],y+mot_posy_08[motion,step_t-1],objNormal,0,1);
				else col = collision_line(x-mot_posx_08[motion,step_t],y+mot_posy_08[motion,step_t],x-mot_posx_08[motion,step_t-1],y+mot_posy_08[motion,step_t-1],objNormal,0,1);
				with(col){
					if(!global.bind && !inv){
						other.bind = 100;
						global.bind = 100;
						cutkind = 0;
						dmgkind = other.mot_dmg_08[other.motion,other.step_t];
						deadkind = other.mot_dead_08[other.motion,other.step_t];
						bindkind = other.mot_bind_08[other.motion,other.step_t];
						speed = other.mot_atkspd_08[other.motion,other.step_t];
						direction = other.mot_atkdir_08[other.motion,other.step_t];
						global.HP[global.chara] -= other.mot_damt_08[other.motion,other.step_t]+random(5);

						sound_play(global.SndHit_05);
	
						step = 0;
						premouse_x = mouse_x;
						premouse_y = mouse_y;
						instance_change(objBind,false);
					}
				}
			}
			if(mot_damt_09[motion,step_t]){
				if(dir)col = collision_line(x+mot_posx_09[motion,step_t],y+mot_posy_09[motion,step_t],x+mot_posx_09[motion,step_t-1],y+mot_posy_09[motion,step_t-1],objNormal,0,1);
				else col = collision_line(x-mot_posx_09[motion,step_t],y+mot_posy_09[motion,step_t],x-mot_posx_09[motion,step_t-1],y+mot_posy_09[motion,step_t-1],objNormal,0,1);
				with(col){
					if(!global.bind && !inv){
						other.bind = 100;
						global.bind = 100;
						cutkind = 0;
						dmgkind = other.mot_dmg_09[other.motion,other.step_t];
						deadkind = other.mot_dead_09[other.motion,other.step_t];
						bindkind = other.mot_bind_09[other.motion,other.step_t];
						speed = other.mot_atkspd_09[other.motion,other.step_t];
						direction = other.mot_atkdir_09[other.motion,other.step_t];
						global.HP[global.chara] -= other.mot_damt_09[other.motion,other.step_t]+random(5);

						sound_play(global.SndHit_05);
	
						step = 0;
						premouse_x = mouse_x;
						premouse_y = mouse_y;
						instance_change(objBind,false);
					}
				}
			}
			if(mot_damt_10[motion,step_t]){
				if(dir)col = collision_line(x+mot_posx_10[motion,step_t],y+mot_posy_10[motion,step_t],x+mot_posx_10[motion,step_t-1],y+mot_posy_10[motion,step_t-1],objNormal,0,1);
				else col = collision_line(x-mot_posx_10[motion,step_t],y+mot_posy_10[motion,step_t],x-mot_posx_10[motion,step_t-1],y+mot_posy_10[motion,step_t-1],objNormal,0,1);
				with(col){
					if(!global.bind && !inv){
						other.bind = 100;
						global.bind = 100;
						cutkind = 0;
						dmgkind = other.mot_dmg_10[other.motion,other.step_t];
						deadkind = other.mot_dead_10[other.motion,other.step_t];
						bindkind = other.mot_bind_10[other.motion,other.step_t];
						speed = other.mot_atkspd_10[other.motion,other.step_t];
						direction = other.mot_atkdir_10[other.motion,other.step_t];
						global.HP[global.chara] -= other.mot_damt_10[other.motion,other.step_t]+random(5);

						sound_play(global.SndHit_05);
	
						step = 0;
						premouse_x = mouse_x;
						premouse_y = mouse_y;
						instance_change(objBind,false);
					}
				}
			}
		}
	}



}
