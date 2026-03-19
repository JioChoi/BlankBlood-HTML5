draw_sprite_ext(global.SprEBoss_Part[7],-1,x+posx[0]+lengthdir_x(170,angle[0]+90),y+posy[0]+lengthdir_y(170,angle[0]+90),1,image_yscale,angle[0],image_blend,image_alpha);
draw_sprite_ext(global.SprEBoss_Part[0],-1,x+posx[0],y+posy[0],1,image_yscale,angle[0],image_blend,image_alpha);

draw_sprite_ext(global.SprEBoss_Part[1],-1,x+posx[L_Hand1],y+posy[L_Hand1],1,image_yscale,angle[L_Hand1],image_blend,image_alpha);
draw_sprite_ext(global.SprEBoss_Part[1],-1,x+posx[L_Hand2],y+posy[L_Hand2],1,image_yscale,angle[L_Hand2],image_blend,image_alpha);
draw_sprite_ext(global.SprEBoss_Part[3],-1,x+posx[L_Hand2]+lengthdir_x(200,angle[L_Hand2]),y+posy[L_Hand2]+lengthdir_y(200,angle[L_Hand2]),image_xscale,image_yscale,0,image_blend,image_alpha);

draw_sprite_ext(global.SprEBoss_Part[2],-1,x+posx[R_Hand1],y+posy[R_Hand1],1,image_yscale,angle[R_Hand1],image_blend,image_alpha);
draw_sprite_ext(global.SprEBoss_Part[2],-1,x+posx[R_Hand2],y+posy[R_Hand2],1,image_yscale,angle[R_Hand2],image_blend,image_alpha);
draw_sprite_ext(global.SprEBoss_Part[4],-1,x+posx[R_Hand2]+lengthdir_x(200,angle[R_Hand2]),y+posy[R_Hand2]+lengthdir_y(200,angle[R_Hand2]),image_xscale,image_yscale,0,image_blend,image_alpha);

draw_sprite_ext(global.SprEBoss_Part[1],-1,x+posx[L_Leg1],y+posy[L_Leg1],1,image_yscale,angle[L_Leg1],image_blend,image_alpha);
draw_sprite_ext(global.SprEBoss_Part[1],-1,x+posx[L_Leg2],y+posy[L_Leg2],1,image_yscale,angle[L_Leg2],image_blend,image_alpha);
draw_sprite_ext(global.SprEBoss_Part[3],-1,x+posx[L_Leg2]+lengthdir_x(200,angle[L_Leg2]),y+posy[L_Leg2]+lengthdir_y(200,angle[L_Leg2]),image_xscale,image_yscale,0,image_blend,image_alpha);

draw_sprite_ext(global.SprEBoss_Part[2],-1,x+posx[R_Leg1],y+posy[R_Leg1],1,image_yscale,angle[R_Leg1],image_blend,image_alpha);
draw_sprite_ext(global.SprEBoss_Part[2],-1,x+posx[R_Leg2],y+posy[R_Leg2],1,image_yscale,angle[R_Leg2],image_blend,image_alpha);
draw_sprite_ext(global.SprEBoss_Part[4],-1,x+posx[R_Leg2]+lengthdir_x(200,angle[R_Leg2]),y+posy[R_Leg2]+lengthdir_y(200,angle[R_Leg2]),image_xscale,image_yscale,0,image_blend,image_alpha);

move = 0;
