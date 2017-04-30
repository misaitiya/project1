var tmp

if(!charge and bullet_count<3){
   if(sprite_index=img_stand or sprite_index=img_stand2){
   sprite_index=spr_jerry_shoot
   change_spr=0; alarm[7]=8}
tmp=instance_create(x+face*2,y-6,obj_Njerry_bullet1);
tmp.master=id
tmp.hspeed=face*4;
tmp.image_xscale=face;
bullet_count+=1
}

if(charge<20 and !Check_K){charge=0}

if(charge>=20 and charge<60 and !Check_K){
if(sprite_index=img_stand or sprite_index=img_stand2){
   sprite_index=spr_jerry_shoot
   change_spr=0; alarm[7]=8}
tmp=instance_create(x+face*2,y-6,obj_Njerry_bullet2);
tmp.master=id
tmp.hspeed=face*4;
tmp.image_xscale=face;
charge=0
}

if(charge==60 and !Check_K){
if(sprite_index=img_stand or sprite_index=img_stand2){
   sprite_index=spr_jerry_shoot
   change_spr=0; alarm[7]=8}
tmp=instance_create(x+face*2,y-6,obj_Njerry_bullet3);
tmp.master=id
tmp.hspeed=face*4;
tmp.image_xscale=face;
charge=0
}

attacking=0;
