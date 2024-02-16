gamepad_set_axis_deadzone(0,0.43);

var h_move= gamepad_axis_value(0,gp_axislh);
var v_move=gamepad_axis_value(0,gp_axislv);

check_fire();
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








