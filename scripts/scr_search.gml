//索敌
var tmp, tmp2         //emo=表情  tmp2=视野障碍判定

tmp=collision_rectangle(search_x1,search_y1,search_x2,search_y2,obj_hero_base,1,1)
if(tmp){tmp2=collision_line(x,y-5,tmp.x,tmp.y-5,obj_block1,1,1)
//无视野障碍
  if(!tmp2 and !target){emo=instance_create(x,touch_y1-5,obj_emo)
                        emo.image_index=0
                        emo.master=id
                        action=0
                        action_count=60
                        target=tmp}
//有视野障碍且已有目标        
  if(tmp2 and target){emo=instance_create(x,touch_y1-5,obj_emo)
                      emo.image_index=1
                      emo.master=id
                      target=0}
        }
//丢失目标        
if(!tmp){if(target){emo=instance_create(x,touch_y1-5,obj_emo)
                    emo.image_index=1
                    emo.master=id}
         target=0}
         
if(!kb and target){tmp=target.x-x
                   if(tmp<0){face=-1}
                   if(tmp>=0){face=1}
                   }
