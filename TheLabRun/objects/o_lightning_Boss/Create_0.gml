damage = 5;
range = 300;
owner_id = noone;
knockback_time = 1;

function lightning_die(){
	//What happens when the arrow is destroyed
	
	speed = 0;
	instance_change(o_lightning_explode, false);
	
}
shield=false;

