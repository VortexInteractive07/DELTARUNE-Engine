/// @description Handle movement inputs, running, directional sprites, and wall collisions
var _hinput = keyboard_check(vk_right) - keyboard_check(vk_left);
var _vinput = keyboard_check(vk_down) - keyboard_check(vk_up);

// Determine running state (obj_controller.alwaysrun or holding S / Shift)
var _is_running = false;
if (instance_exists(obj_controller)) {
    if (obj_controller.alwaysrun) {
        _is_running = true;
    }
}
if (keyboard_check(ord("S")) || keyboard_check(vk_shift)) {
    _is_running = true;
}

var _current_speed = _is_running ? move_speed_run : move_speed_walk;

var _xtarget = _hinput * _current_speed;
var _ytarget = _vinput * _current_speed;

// Horizontal Collision
if (place_meeting(x + _xtarget, y, obj_wall)) {
    while (!place_meeting(x + sign(_xtarget), y, obj_wall)) {
        x += sign(_xtarget);
    }
    _xtarget = 0;
}
x += _xtarget;

// Vertical Collision
if (place_meeting(x, y + _ytarget, obj_wall)) {
    while (!place_meeting(x, y + sign(_ytarget), obj_wall)) {
        y += sign(_ytarget);
    }
    _ytarget = 0;
}
y += _ytarget;

// Update sprites and animation speed based on input
if (_hinput != 0 || _vinput != 0) {
    image_speed = _is_running ? 1.5 : 1;
    
    if (_vinput > 0) {
        sprite_index = spr_kris_walk_down;
        facing = 0;
    } else if (_vinput < 0) {
        sprite_index = spr_kris_walk_up;
        facing = 3;
    } else if (_hinput < 0) {
        sprite_index = spr_kris_walk_left;
        facing = 1;
    } else if (_hinput > 0) {
        sprite_index = spr_kris_walk_right;
        facing = 2;
    }
} else {
    image_speed = 0;
    image_index = 0;
    
    switch (facing) {
        case 0:
            sprite_index = spr_kris_idle_down;
            break;
        case 1:
            sprite_index = spr_kris_idle_left;
            break;
        case 2:
            sprite_index = spr_kris_idle_right;
            break;
        case 3:
            sprite_index = spr_kris_idle_up;
            break;
    }
}