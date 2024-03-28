draw_self();
check_facing2();
if (instance_exists(Obj_healthboost) && other.hp<6){
	move_towards_point(Obj_healthboost.x,Obj_healthboost.y,2)  
	
}
else  {
	switch(state) {
	case states.IDLE:
		calc_entity_movement2();
		script_execute(check_for_player2);
		if path_index != -1 state = states.MOVE;
		enemy_anim();
		
	break;
	case states.MOVE:
		calc_entity_movement2();
		script_execute(check_for_player2);
		if path_index == -1 state = states.IDLE;
		
		enemy_anim2();
	break;
	case states.ATTACK:
		calc_entity_movement2();
		perform_attack2();
		
		enemy_anim();
	break;
	case states.DEAD:
		calc_entity_movement2();
		enemy_anim2();
	break;
}


}

image_xscale = -1;



///else 
  //  {
//	Object2.x =400;
	//Object2.y= 400;
//	}









































