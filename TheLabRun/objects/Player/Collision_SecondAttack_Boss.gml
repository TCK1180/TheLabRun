/// @description collison with boss second attack
// You can write your code in this editor

if (shield==false){
	global.Lives-=1;
	shield=true;
    alarm[0]=40*2;
}
if (global.Lives<1)
{
	room_goto(Restart)
}
