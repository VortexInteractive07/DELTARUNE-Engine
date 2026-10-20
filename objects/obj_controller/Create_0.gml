/// @description Initialize controller settings, music, and view resolution
audio_stop_all();
audio_play_sound(mus_hometown_nes, 1, true);

// Global settings
alwaysrun = false;

// Display and view resolution setup (320x240)
var _target_width = 320;
var _target_height = 240;

window_set_fullscreen(true);

surface_resize(application_surface, _target_width, _target_height);
display_set_gui_size(_target_width, _target_height);

// Enable views if room views are active
if (room_exists(room)) {
    view_enabled = true;
    view_visible[0] = true;
    camera_set_view_size(view_camera[0], _target_width, _target_height);
}