/// @description Insert description here
// You can write your code in this editor
event_inherited();
var target=Death_screen;
if (  room==Death_screen  and global.destroyed_count<=10)
{target=Level1;
	TransitionStart(target,Fade_out,Fade_In);	 
}

else if (room==Death_screen  and global.destroyed_count>10 and global.destroyed_count<20){
	target=Level2;
	TransitionStart(target,Fade_out,Fade_In);	
	
}

else if(room==Death_screen  and global.destroyed_count>=19 )
	{target=Bosslevel;
	TransitionStart(target,Fade_out,Fade_In);	
	}

