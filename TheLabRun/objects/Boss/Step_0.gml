if (global.triggered == true){
	
if (global.Lives<6){fire_rate=10;}

   enemyfire();
   
}

//instance_create_layer(x,y,Enemy,SecondAttack_Boss)
if( global.Live<=0){instance_destroy(self);}




show_debug_message(global.Live)

 