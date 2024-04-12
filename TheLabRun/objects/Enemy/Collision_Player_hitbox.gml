/// @description Insert description here
// You can write your code in this editor


if (other.creator==Player.id and shield=false) {
	hp-=other.damage;
	shield=true;
	alarm[0]=20*2;
	if (hp <=0){
		instance_destroy();
		global.destroyed_count+=1;
		
	}
	//instance_destroy(other);
}











































