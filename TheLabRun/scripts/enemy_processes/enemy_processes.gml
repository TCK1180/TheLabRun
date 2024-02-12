function calc_entity_movement(){
	//moves enemy and apply drag
	
	//apply movement
	x += hsp;
	y += vsp;
	
	//slowdown
	hsp *= global.drag;
	vsp *= global.drag;
	
	check_if_stopped();
}	



function check_facing() {
	//check which way we are moving and set facing
	if knockback_time <= 0{
		var _facing = sign(x-xp);
		if _facing != 0 facing = _facing;
	}
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
			show_hurt();
		break;
		case states.MOVE:
			sprite_index = s_walk;
			show_hurt();
		break;
		case states.ATTACK:
			sprite_index = s_attack;
		break;
		case states.DEAD:
			sprite_index = s_dead;
		break;
	}
	//set depth
	depth = -bbox_bottom;
	//update previous position
	xp = x;
	yp = y;
}

function show_hurt() {
	//show the hurt sprite when being knocked back	
	
	if knockback_time-- > 0 sprite_index = s_hurt;
}