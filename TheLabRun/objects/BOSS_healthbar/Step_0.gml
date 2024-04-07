/// @description Insert description here
// You can write your code in this editor
followtimer=clamp(followtimer-1,0,followtimermax);



if followtimer==0{
	hp_prev=lerp(hp_prev,hp,0.2)
}


if (keyboard_check_pressed(vk_backspace)){
	hp-=2;
	followtimer=followtimermax
}
