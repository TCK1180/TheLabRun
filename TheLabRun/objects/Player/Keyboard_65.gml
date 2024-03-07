/// @description Insert description here
// You can write your code in this editor
if (!place_meeting(x-spd,y,Obj_Barrier)) {
	 if (!place_meeting(x - spd, y, wall)) {
        x -= spd; // Move the player to the left
		sprite_index = left_testplayer;
    }
}