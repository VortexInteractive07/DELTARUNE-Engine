/// @description Toggle fullscreen with F4 key
if (keyboard_check_pressed(vk_f4)) {
    var _state = !window_get_fullscreen();
    window_set_fullscreen(_state);
}