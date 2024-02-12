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
		//check_facing();
		enemy_anim();
	break;
	case states.ATTACK:
		calc_entity_movement();
		perform_attack();
		
		enemy_anim();
	break;
	case states.DEAD:
		calc_entity_movement();
		enemy_anim();
	break;
}





///else 
  //  {
//	Object2.x =400;
	//Object2.y= 400;
//	}









































