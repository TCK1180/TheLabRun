if (global.triggered == true){
	
if (global.Lives<6){fire_rate=10;}

   enemyfire();
   
}
if instance_exists(Boss){
	if (secondattack=true){
		instance_create_layer(x,y,Enemy,SecondAttack_Boss);
		secondattack=false;
	}
}
show_debug_message(secondattack)

if( global.Live<=0){
	sprite_index=Angel_red_boss_dead;
	
	
	}

//if (global.Live <= 0 and sprite_index == Angel_red_boss_dead and image_index == image_number - 1)
//{
  //  instance_destroy();
//}






 