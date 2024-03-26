/// @description healthbar
// You can write your code in this editor
//draw_self()
//draw_healthbar(200, 100, 50, 70, 100, c_red, c_green, c_blue, 0, true, true);

draw_set_color(c_black);
//draw_text(200,100,"Lives: "+string(global.Lives));


draw_sprite_stretched(healthbar,0,healthbar_x,healthbar_y,min((global.Lives/global.Lives_Max)*healthbar_width,healthbar_width),healthbar_height);

draw_sprite(Healthbar_border,0,healthbar_x,healthbar_y);

draw_text(1300,20,bulletcount);


































