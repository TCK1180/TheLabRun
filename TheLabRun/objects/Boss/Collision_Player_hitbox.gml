/// @description Insert description here
// You can write your code in this editor



if (other.creator==Player.id and shield=false) {
	 hp-=2;
	shield=true;
	alarm[4]=20*2;
	if (global.Live <=0){
		instance_destroy();
		global.destroyed_count+=1;
		
	}
	//instance_destroy(other);
}

