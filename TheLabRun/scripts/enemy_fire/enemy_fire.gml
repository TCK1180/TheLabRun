// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemyfire(){
	
	if (global.Live>=1){
		if can_attack {
			can_attack = false;
			alarm[3] = fire_rate;
			
			var _dir = point_direction(x, y, Player.x, Player.y);
			
			var _inst = instance_create_layer(x, y, "Lightning", o_lightning_Boss);
			with(_inst) {
				speed = other.lightning_speed;
				direction = _dir;
				image_angle = _dir;
				owner_id = other;	
				
			}
		}
	}		
	
}


