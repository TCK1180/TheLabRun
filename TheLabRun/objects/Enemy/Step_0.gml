switch(state) {
	case states.IDLE:
		script_execute(check_for_player);
		if path_index != -1 state = states.MOVE;
		enemy_anim();
	break;
	case states.MOVE:
		script_execute(check_for_player);
		if path_index == -1 state = states.IDLE;
		//check_facing();
		enemy_anim();
	break;
	case states.ATTACK:
		enemy_anim();
	break;
	case states.DEAD:
		enemy_anim();
	break;
}





///else 
  //  {
//	Object2.x =400;
	//Object2.y= 400;
//	}









































