/// @description Insert description here
// You can write your code in this editor
if (!place_meeting(x,y+spd, Obj_Barrier)){
	if (!place_meeting(x , y+spd, wall)) {
        y+= spd; // Move the player to the left
		sprite_index = down_testplayer;
    }
}