/// @description Insert description here
// You can write your code in this editor
var target=Level1;
if (!instance_exists(Enemy) and room==Level1)
{target=Level2;

	TransitionStart(target,Fade_out,Fade_In);
		//room_goto(Level2)
}