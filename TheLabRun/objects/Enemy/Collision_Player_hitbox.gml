/// @description Insert description here
// You can write your code in this editor


if (other.creator==Player.id) {
	hp-=other.damage;
	if (hp <=0){
		instance_destroy();
		global.destroyed_count+=1;
		
	}
	instance_destroy(other);
}











































