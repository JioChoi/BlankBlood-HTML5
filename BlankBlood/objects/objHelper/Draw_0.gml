var __b__;
__b__ = action_if_variable(global.chara, 1, 0);
if __b__
{
{
__b__ = action_if_variable(mode, "wait", 0);
if __b__
{
{
	if(air){
		if(vspeed < 0){
				image_speed = 0.3;
				if(dir == 0){
					draw_sprite_ext(global.SprP_jumpU_1[0],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
				}else{
					draw_sprite_ext(global.SprP_jumpU_1[0],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
				}
		}else{
				image_speed = 0.3;
				if(dir == 0){
					draw_sprite_ext(global.SprP_jumpD_1[0],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
				}else{
					draw_sprite_ext(global.SprP_jumpD_1[0],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
				}
		}
	}else{
		if(!move){
			if(crouch){
				image_speed = 0.3;
				if(dir == 0){
					draw_sprite_ext(global.SprP_crouch_1[0],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
				}else{
					draw_sprite_ext(global.SprP_crouch_1[0],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
				}
			}else{
				image_speed = 0.25;
				if(dir == 0){
					draw_sprite_ext(global.SprP_stand_1[0],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
				}else{
					draw_sprite_ext(global.SprP_stand_1[0],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
				}
			}
		}else{
			if(dash){
				image_speed = 0.35;
				if(dir == 0){
					draw_sprite_ext(global.SprP_run_1[0],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
				}else{
					draw_sprite_ext(global.SprP_run_1[0],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
				}
			}else{
				image_speed = 0.3;
				if(dir == 0){
					draw_sprite_ext(global.SprP_walk_1[0],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
				}else{
					draw_sprite_ext(global.SprP_walk_1[0],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
				}
			}
		}
	}
}


}
__b__ = action_if_variable(mode, "attack", 0);
if __b__
{
{
	switch (motion)
	{
	case 1:
		image_speed = 0.4;
		if(dir == 0){		
			draw_sprite_ext(global.SprP_AtkE_1[0],-1,x,y,1,image_yscale,image_angle,image_blend,((10-step)/10)*image_alpha);
			draw_sprite_ext(global.SprP_Atk_1[0],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
		}else{
			draw_sprite_ext(global.SprP_AtkE_1[0],-1,x,y,-1,image_yscale,image_angle,image_blend,((10-step)/10)*image_alpha);
			draw_sprite_ext(global.SprP_Atk_1[0],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
		}
		break;
	case 2:
		image_speed = 0.4;
		if(dir == 0){
			draw_sprite_ext(global.SprP_AtkE_2[0],-1,x,y,1,image_yscale,image_angle,image_blend,((10-step)/10)*image_alpha);
			draw_sprite_ext(global.SprP_Atk_2[0],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
		}else{
			draw_sprite_ext(global.SprP_AtkE_2[0],-1,x,y,-1,image_yscale,image_angle,image_blend,((10-step)/10)*image_alpha);
			draw_sprite_ext(global.SprP_Atk_2[0],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
		}
		break;
	case 3:
		image_speed = 0.4;
		if(dir == 0){
			draw_sprite_ext(global.SprP_AtkE_3[0],-1,x,y,1,image_yscale,image_angle,image_blend,((10-step)/10)*image_alpha);
			draw_sprite_ext(global.SprP_Atk_3[0],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
		}else{
			draw_sprite_ext(global.SprP_AtkE_3[0],-1,x,y,-1,image_yscale,image_angle,image_blend,((10-step)/10)*image_alpha);
			draw_sprite_ext(global.SprP_Atk_3[0],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
		}
		break;
	case 4:
		image_speed = 0.4;
		if(dir == 0){
			draw_sprite_ext(global.SprP_AtkE_4[0],-1,x,y,1,image_yscale,image_angle,image_blend,((10-step)/10)*image_alpha);
			draw_sprite_ext(global.SprP_Atk_4[0],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
		}else{
			draw_sprite_ext(global.SprP_AtkE_4[0],-1,x,y,-1,image_yscale,image_angle,image_blend,((10-step)/10)*image_alpha);
			draw_sprite_ext(global.SprP_Atk_4[0],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
		}
		break;
	case 5:
		image_speed = 0.7;
		if(dir == 0){
			draw_sprite_ext(global.SprP_AtkE_J[0],-1,x,y,1,image_yscale,image_angle,image_blend,((10-step)/10)*image_alpha);
			draw_sprite_ext(global.SprP_Atk_J[0],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
		}else{
			draw_sprite_ext(global.SprP_AtkE_J[0],-1,x,y,-1,image_yscale,image_angle,image_blend,((10-step)/10)*image_alpha);
			draw_sprite_ext(global.SprP_Atk_J[0],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
		}
		break;
	case 6:
		image_speed = 0.4;
		if(dir == 0){
			draw_sprite_ext(global.SprP_AtkE_3[0],-1,x,y,1,image_yscale,image_angle,image_blend,((10-step)/10)*image_alpha);
			draw_sprite_ext(global.SprP_Atk_3[0],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
		}else{
			draw_sprite_ext(global.SprP_AtkE_3[0],-1,x,y,-1,image_yscale,image_angle,image_blend,((10-step)/10)*image_alpha);
			draw_sprite_ext(global.SprP_Atk_3[0],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
		}
		break;
	default: break;
	}
}

}
}
}
else
{
{
__b__ = action_if_variable(mode, "wait", 0);
if __b__
{
{
	if(air){
		if(vspeed < 0){
				image_speed = 0.3;
				if(dir == 0){
					draw_sprite_ext(global.SprP_Atk_1[1],gun_index,x-6,y-12,-1,image_yscale,gun_dir+180,image_blend,image_alpha);
					draw_sprite_ext(global.SprP_jumpU_1[1],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
				}else{
					draw_sprite_ext(global.SprP_Atk_1[1],gun_index,x+6,y-12,1,image_yscale,gun_dir,image_blend,image_alpha);
					draw_sprite_ext(global.SprP_jumpU_1[1],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
				}
		}else{
				image_speed = 0.3;
				if(dir == 0){
					draw_sprite_ext(global.SprP_Atk_1[1],gun_index,x-6,y-12,-1,image_yscale,gun_dir+180,image_blend,image_alpha);
					draw_sprite_ext(global.SprP_jumpD_1[1],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
				}else{
					draw_sprite_ext(global.SprP_Atk_1[1],gun_index,x+6,y-12,1,image_yscale,gun_dir,image_blend,image_alpha);
					draw_sprite_ext(global.SprP_jumpD_1[1],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
				}
		}
	}else{
		if(!move){
			if(crouch){
				image_speed = 0.3;
				if(dir == 0){
					draw_sprite_ext(global.SprP_Atk_1[1],gun_index,x+7,y+12,-1,image_yscale,gun_dir+180,image_blend,image_alpha);
					draw_sprite_ext(global.SprP_crouch_1[1],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
				}else{
					draw_sprite_ext(global.SprP_Atk_1[1],gun_index,x-7,y+12,1,image_yscale,gun_dir,image_blend,image_alpha);
					draw_sprite_ext(global.SprP_crouch_1[1],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
				}
			}else{
				image_speed = 0.25;
				if(dir == 0){
					draw_sprite_ext(global.SprP_Atk_1[1],gun_index,x,y-12+sin(image_index),-1,image_yscale,gun_dir+180,image_blend,image_alpha);
					draw_sprite_ext(global.SprP_stand_1[1],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
				}else{
					draw_sprite_ext(global.SprP_Atk_1[1],gun_index,x,y-12+sin(image_index),1,image_yscale,gun_dir,image_blend,image_alpha);
					draw_sprite_ext(global.SprP_stand_1[1],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
				}
			}
		}else{
			if(dash){
				image_speed = 0.35;
				if(dir == 0){
					draw_sprite_ext(global.SprP_Atk_1[1],gun_index,x-5,y-6+sin(image_index),-1,image_yscale,gun_dir+180,image_blend,image_alpha);
					draw_sprite_ext(global.SprP_run_1[1],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
				}else{
					draw_sprite_ext(global.SprP_Atk_1[1],gun_index,x+5,y-6+sin(image_index),1,image_yscale,gun_dir,image_blend,image_alpha);
					draw_sprite_ext(global.SprP_run_1[1],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
				}
			}else{
				image_speed = 0.3;
				if(dir == 0){
					draw_sprite_ext(global.SprP_Atk_1[1],gun_index,x-5,y-6+sin(image_index),-1,image_yscale,gun_dir+180,image_blend,image_alpha);
					draw_sprite_ext(global.SprP_walk_1[1],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
				}else{
					draw_sprite_ext(global.SprP_Atk_1[1],gun_index,x+5,y-6+sin(image_index),1,image_yscale,gun_dir,image_blend,image_alpha);
					draw_sprite_ext(global.SprP_walk_1[1],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
				}
			}
		}
	}
}


}
__b__ = action_if_variable(mode, "attack", 0);
if __b__
{
{
	switch (motion)
	{
	case 1:
		if(air){
			if(vspeed < 0){
					image_speed = 0.3;
					if(dir == 0){
						draw_sprite_ext(global.SprP_Atk_1[1],gun_index,x-6,y-12,-1,image_yscale,gun_dir+180,image_blend,image_alpha);
						draw_sprite_ext(global.SprP_jumpU_1[1],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
					}else{
						draw_sprite_ext(global.SprP_Atk_1[1],gun_index,x+6,y-12,1,image_yscale,gun_dir,image_blend,image_alpha);
						draw_sprite_ext(global.SprP_jumpU_1[1],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
					}
			}else{
					image_speed = 0.3;
					if(dir == 0){
						draw_sprite_ext(global.SprP_Atk_1[1],gun_index,x-6,y-12,-1,image_yscale,gun_dir+180,image_blend,image_alpha);
						draw_sprite_ext(global.SprP_jumpD_1[1],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
					}else{
						draw_sprite_ext(global.SprP_Atk_1[1],gun_index,x+6,y-12,1,image_yscale,gun_dir,image_blend,image_alpha);
						draw_sprite_ext(global.SprP_jumpD_1[1],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
					}
			}
		}else{
			if(!move){
				if(crouch){
					image_speed = 0.3;
					if(dir == 0){
						draw_sprite_ext(global.SprP_Atk_1[1],gun_index,x+7,y+12,-1,image_yscale,gun_dir+180,image_blend,image_alpha);
						draw_sprite_ext(global.SprP_crouch_1[1],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
					}else{
						draw_sprite_ext(global.SprP_Atk_1[1],gun_index,x-7,y+12,1,image_yscale,gun_dir,image_blend,image_alpha);
						draw_sprite_ext(global.SprP_crouch_1[1],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
					}
				}else{
					image_speed = 0.25;
					if(dir == 0){
						draw_sprite_ext(global.SprP_Atk_1[1],gun_index,x,y-12+sin(image_index),-1,image_yscale,gun_dir+180,image_blend,image_alpha);
						draw_sprite_ext(global.SprP_stand_1[1],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
					}else{
						draw_sprite_ext(global.SprP_Atk_1[1],gun_index,x,y-12+sin(image_index),1,image_yscale,gun_dir,image_blend,image_alpha);
						draw_sprite_ext(global.SprP_stand_1[1],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
					}
				}
			}else{
				if(dash){
					image_speed = 0.35;
					if(dir == 0){
						draw_sprite_ext(global.SprP_Atk_1[1],gun_index,x-5,y-6+sin(image_index),-1,image_yscale,gun_dir+180,image_blend,image_alpha);
						draw_sprite_ext(global.SprP_run_1[1],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
					}else{
						draw_sprite_ext(global.SprP_Atk_1[1],gun_index,x+5,y-6+sin(image_index),1,image_yscale,gun_dir,image_blend,image_alpha);
						draw_sprite_ext(global.SprP_run_1[1],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
					}
				}else{
					image_speed = 0.3;
					if(dir == 0){
						draw_sprite_ext(global.SprP_Atk_1[1],gun_index,x-5,y-6+sin(image_index),-1,image_yscale,gun_dir+180,image_blend,image_alpha);
						draw_sprite_ext(global.SprP_walk_1[1],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
					}else{
						draw_sprite_ext(global.SprP_Atk_1[1],gun_index,x+5,y-6+sin(image_index),1,image_yscale,gun_dir,image_blend,image_alpha);
						draw_sprite_ext(global.SprP_walk_1[1],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
					}
				}
			}
		}
		break;
		case 2:
		image_speed = 0.3;
		if(dir == 0) draw_sprite_ext(global.SprP_Atk_2[1],-1,x,y,1,image_yscale,image_angle,image_blend,image_alpha);
		else draw_sprite_ext(global.SprP_Atk_2[1],-1,x,y,-1,image_yscale,image_angle,image_blend,image_alpha);
		break;
	}
}


}
}
}
move = 0;
dash = 0;
