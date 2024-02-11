damage = 1;
range = 160;
owner_id = noone;
knockback_time = 5;

function lightning_die(){
	//What happens when the arrow is destroyed
	
	speed = 0;
	instance_change(o_lightning_explode, false);
	
}


