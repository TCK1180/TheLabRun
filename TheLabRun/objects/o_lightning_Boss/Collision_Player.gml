/// @description Insert description here
// You can write your code in this editor

if (shield==false){
	global.Lives-=1;
	shield=true;
    alarm[0]=60*2;
}
if (global.Lives<1)
{
	room_goto(Restart)
}


//gamepad_set_vibration(0,1,1);
lightning_die();












































