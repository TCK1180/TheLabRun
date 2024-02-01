function check_for_player(){
	var _distance = distance_to_object(Player);
	
	if (_distance<= alert_dis)
	{
		//checks if player is close enough 
		alert=true;
		move_towards_point(Player.x,Player.y,2);//moves enemy to playerpositi
	}
}