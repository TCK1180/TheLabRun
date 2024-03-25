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
		//instance_nearest()
		if (Player.x>x){
			facing=1;
		}
		
		else if  (Player.x<x){
			facing=-1;}
		//image_xscale = -1;
		//image_blend = c_blue;
		//show_debug_message("Checking facing direction " + string(x))
		

  
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
				state=states.ATTACK;
	  
   
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

function perform_attack()
{
	if image_index>=attack_frame and can_attak{
	can_attak=false;
	alarm[1]=attack_cooldown;
	
	var _dir=point_direction(x,y,Player.x,Player.y);
	var _xx=x+lengthdir_x(attack_distance,_dir);
	var _yy=y+lengthdir_y(attack_distance,_dir);
	var _inst=instance_create_layer(_xx,_yy,"Instances",o_enemy_hitbox);
	_inst.owner_id=id;
	_inst.damage=damage;
	_inst.knockback_time=knockback_time;
	
	}
}

	

function show_hurt() {
	//show the hurt sprite when being knocked back	
	
	if knockback_time-- > 0 sprite_index = s_hurt;
}