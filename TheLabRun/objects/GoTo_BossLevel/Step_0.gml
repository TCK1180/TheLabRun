/// @description Insert description here
// You can write your code in this editor
var target=Level2;
if (!instance_exists(Enemy)and room==Level2)
{target=Bosslevel;
	TransitionStart(target,Fade_out,Fade_In);
	//room_goto(Bosslevel);
	
}