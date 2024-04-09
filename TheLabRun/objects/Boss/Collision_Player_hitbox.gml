/// @description Insert description here
// You can write your code in this editor
global.Live-=2;


if (other.creator==Player.id) {
	hp-=2;
	if (hp <=0){
		instance_destroy();
		global.destroyed_count+=1;
		
	}
	instance_destroy(other);
}

