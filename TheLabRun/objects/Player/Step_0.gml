gamepad_set_axis_deadzone(0,0.43);

var h_move= gamepad_axis_value(0,gp_axislh);
var v_move=gamepad_axis_value(0,gp_axislv);

check_fire();//lightning attack

if (global.Lives<=0){room_goto(Restart)}
//controller movement 
if (!place_meeting(x,y,Obj_Barrier)){
	
	x+=h_move*5;	
}
else if (!place_meeting(x,y,Obj_Barrier)){
	x-=h_move*5;
}
if (!place_meeting(x,y,Obj_Barrier)){
	y+=v_move*5;
}
else if (!place_meeting(x,y,Obj_Barrier)){
	y-=v_move*5;
}

// Step event of the object managing bulletcount
if (bulletcount <= 10 && !alarm[5]) { // Check if bulletcount is 0 or below and alarm[5] is not already set
    alarm[5] = room_speed * 5; // Set the alarm to trigger after approximately 20 seconds
	
}
//show_debug_message(bulletcount)
//show_debug_message(can_attack)









