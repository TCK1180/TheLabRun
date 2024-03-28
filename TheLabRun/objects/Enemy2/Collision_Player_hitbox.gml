/// @description Insert description here
// You can write your code in this editor


if (other.creator==Player.id) {
	hp-=other.damage;
	if (hp <=0){
		instance_destroy();
		
	}
	instance_destroy(other);
}











































