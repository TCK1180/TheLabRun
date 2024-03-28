/// @description left press and controller controls

 if(mouse_check_button_pressed(mb_left)){
	 
	
	 var  playerCenterX= x+sprite_width/2;
	 var  playerCenterY= y+sprite_height/2;
	 
	var dir = point_direction (playerCenterX, playerCenterY, mouse_x, mouse_y);
	var Len=32;
	var hitboxX=lengthdir_x(Len,dir)+playerCenterX;
	var hitboxY=lengthdir_y(Len,dir)+playerCenterY;
	
	var hitbox= instance_create_depth(hitboxX,hitboxY,depth,Player_hitbox);
	hitbox.creator=id;
	hitbox.damage=5;
	audio_play_sound(sword_arm_2b, 0, false); 
	
 
}

if (gamepad_button_check_pressed(0, gp_shoulderl)) {
    var playerCenterX = x + sprite_width / 2;
    var playerCenterY = y + sprite_height / 2;

    var dir = point_direction(playerCenterX, playerCenterY, mouse_x, mouse_y);
    var Len = 32;
    var hitboxX = lengthdir_x(Len, dir) + playerCenterX;
    var hitboxY = lengthdir_y(Len, dir) + playerCenterY;

    var hitbox = instance_create_depth(hitboxX, hitboxY, depth, Player_hitbox);
    hitbox.creator = id;
    hitbox.damage = 5;
}




































