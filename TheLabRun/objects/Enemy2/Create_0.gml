
alert = false;
event_inherited();

hp_max = 15;
hp = hp_max;
global.enemyhealth = hp;

s_idle =Idle_Enemy2;
s_walk =enemy2_Walk;
s_attack = Attack_2enemy;
s_dead = s_enemy_dead;
s_hurt = s_enemy_hurt;

//frame when damage is dealth
attack_frame=17;
can_attack=true;
// can we attack
attack_cooldown=75;
//delay
damage=2;
//damage
knockback_time=10;
//how long we knockback player for

alert_dis = 200;

//attack distance
attack_distance=10;

//create path
path=path_add();

//set delay for calculating path
calc_path_delay=30;
//timer for when we calculate path
calc_path_timer=irandom(60);

hsp = 0;
vsp = 0;






































