function check_facing() {
	//check which way we are moving and set facing
	
	var _facing = sign(x-xp);
	if _facing != 0 facing = _facing;
	
}

function check_for_player(){
	var _distance = distance_to_object(Player);
	//can we make a path to the player
	if ((_distance<=alert_dis) or alert)and _distance>attack_distance{
		//enemy is now alert
		alert=true;
		if calc_path_timer-- <=0{
		//reset timer
			calc_path_timer=calc_path_delay;
			var _found_player=mp_grid_path(global.mp_grid, path, x, y, Player.x, Player.y, choose(0,1));
	//start path we can reach player
			if _found_player{
	
				path_start(path,2,path_action_stop,false);
		
	   }   
	  }	
	} 
	   else {
			if _distance<=attack_distance{
				path_end();
	  
   
   }
   }			
}
function enemy_anim(){
		switch(state) {
		case states.IDLE:
			sprite_index = s_idle;
		break;
		case states.MOVE:
			sprite_index = s_walk;
		break;
		case states.ATTACK:
			sprite_index = s_attack;
		break;
		case states.DEAD:
			sprite_index = s_dead;
		break;
	}
	//update previous position
	xp = x;
	yp = y;
}