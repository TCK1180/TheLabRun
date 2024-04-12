/// @description create
// You can write your code in this editor

shield=false;
global.Live=50;
//healthbar variables
HP_Max=global.Live;
hp=HP_Max;
hp_prev=HP_Max;

followtimermax=60;
followtimer=0;
/////////////////////////

shield=false;

takeDamage=false;
global.Live_Max=50;
fire_rate = 40;
can_attack = true;
lightning_speed = 8;
damage = 5;

global.triggered = false;

secondattacktrigger = true;

secondattack=true;

alarm[0]=room_speed*10;
boss_healthbar_width=50;
boss_healthbar_height=20;
boss_healthbar_x=500;
boss_healthbar_y=690;