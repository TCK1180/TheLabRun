draw_self();
check_facing();
if (instance_exists(Obj_healthboost) && other.hp<6){
	move_towards_point(Obj_healthboost.x,Obj_healthboost.y,2)  
	
}
else  {
	switch(state) {
	case states.IDLE:
		calc_entity_movement();
		script_execute(check_for_player);
		if path_index != -1 state = states.MOVE;
		enemy_anim();
		
	break;
	case states.MOVE:
		calc_entity_movement();
		script_execute(check_for_player);
		if path_index == -1 state = states.IDLE;
		
		enemy_anim();
	break;
	case states.ATTACK:
		calc_entity_movement();
		perform_attack();
		if(!audio_is_playing(enemy_Sound1))
			audio_play_sound(enemy_Sound1, 0, false);
		
		
		enemy_anim();
	break;
	case states.DEAD:
		calc_entity_movement();
		enemy_anim();
	break;
}


}

image_xscale = -1;



///else 
  //  {
//	Object2.x =400;
	//Object2.y= 400;
//	}








































