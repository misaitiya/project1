var tmp

vspeed=down_atk_speed

//攻击区域
atk_x1 =touch_x1;        //左侧
atk_x2 = touch_x2;       //右侧
atk_y1 = y-1
atk_y2 = y

atk_pow=2

//落下判定

//敌人
for(i=0;i<vspeed;i++){ 
tmp=collision_rectangle(atk_x1,atk_y1+vspeed+i,atk_x2,atk_y2+vspeed+i,obj_enemybase,0,0)
if(tmp and vspeed>0 and y+i==tmp.touch_y1-1){
  y=y+i
  vspeed=0
  scr_givedamage(tmp,1,5)
  down_atk=2;
  attacking=0;
  alarm[0]=1
//清空攻击区域
  atk_x1 = 0
  atk_x2 = 0
  atk_y1 = 0
  atk_y2 = 0

  atk_pow = 0
  break;
  }
}

//砖块
for(i=0;i<vspeed;i++){ 
tmp=collision_line(touch_x1+2,y+vspeed+i,touch_x2-2,y+vspeed+i,obj_blockbase,0,0)
if(tmp and vspeed>0){
y=tmp.y; vspeed=0; on_floor=1; in_air=0; 
attacking=0
if(Check_J){jump=1}
//清空攻击区域
atk_x1 = 0
atk_x2 = 0
atk_y1 = 0
atk_y2 = 0

atk_pow = 0
break;
}}

if(kb){
atk_x1 = 0
atk_x2 = 0
atk_y1 = 0
atk_y2 = 0
}
