/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(vk_space) {
    room_goto_next(); // Skip the scene and proceed to the next room
}

// Text typing effect
text_timer -= 1 / room_speed;
if (text_timer <= 0 && text_index < string_length(scene_text)) {
    text_index++;
    text_timer = text_speed;
}

if (text_index >= string_length(scene_text)) {
    continue_timer -= 1;
    if (continue_timer <= 0 && continue_text_index < string_length(continue_text)) {
        continue_text_index++;
    }
}
