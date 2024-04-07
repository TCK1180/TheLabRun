/// @description Insert description here
// You can write your code in this editor

var spr= BOSS_NEW_HEALTHBAR;
var spritewidth = sprite_get_width(spr);
var spriteHeight= sprite_get_height(spr);
   
   
   var xPosition= (300);
   var yposition=  (200);
   
   
   var xoffset= (xPosition-round(spritewidth/2)+6);
    var yoffset= (yposition-round(spriteHeight/2));
	
	//draw_sprite_ext(spr,0,xoffset,yoffset,1,1,0,c_white,1);
	draw_sprite_ext(spr,0,xoffset,yoffset,1,1,0,c_white,1);
	draw_sprite_ext(spr,1,xoffset,yoffset,1,1,0,c_white,1);
	
	draw_sprite_ext(spr,3,xoffset,yoffset,(hp_prev/HP_Max),1,0,c_white,1);
	draw_sprite_ext(spr,2,xoffset,yoffset,(hp/HP_Max),1,0,c_white,1);	
	
	
	
	
	
	var xLength=54;
	var markerValue=4;
	var markerCount= (HP_Max/markerValue);
	var markerofset= (xLength/markerCount);
	
	
	for( var i=1; i<markerCount; i++){
		draw_sprite_ext(healthbar_marker,0,xoffset+(markerofset*i)-1,yoffset,1,1,0,c_white,1)}
		