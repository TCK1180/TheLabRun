// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_fire(){

    if (bulletcount > 0) {
        if (mouse_check_button(mb_right)) {
            if (can_attack) {
                can_attack = false;
                alarm[1] = fire_rate;
                var _dir = point_direction(x, y, mouse_x, mouse_y);
                var _inst = instance_create_layer(x, y, "Lightning", o_lightning);
                with (_inst) {
                    speed = other.lightning_speed;
                    direction = _dir;
                    image_angle = _dir;
                    owner_id = other;
					audio_play_sound(snd_bolt_throw, 0, false);
                }
                bulletcount -= 1;
				
            }
        }
    } else {
        // Stop firing when bulletcount is 0
        can_attack = false;
    }
}
