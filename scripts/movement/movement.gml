#region attack
if (room == seashore) {
        if (keyboard_check(vk_space)) { //press space to attack
			
            sprite_index = spr_side_atk;
            image_index = 0;
        }
		if (keyboard_check_released(vk_space)) {
			if (lastdir == up) {
			sprite_index = spr_up;
			image_index = 6;
			}
			if (lastdir == down) {
			sprite_index = spr_down;
			image_index = 6;
			}
			if (lastdir == side) {
			sprite_index = spr_side;
			image_index = 6;
			}
		}
}
#endregion


#region left and right walking
if (keyboard_check(ord("A"))) { //pressing left
	lastdir = side; //last direction pressed was sideways
    x -= walkingspeed;
    sprite_index = spr_side;
    image_speed = 2;
    image_xscale = 1;
    if (image_index > 5) { //don't include idle sprite in loop
        image_index = 0;
    }

    if (place_meeting(x - walkingspeed, y, obj_solids)) { //solids collision
        x += walkingspeed;
        //show_debug_message("left");
    }
} else if (keyboard_check(ord("D"))) { //pressing right
	lastdir = side;
    x += walkingspeed;
    sprite_index = spr_side;
    image_speed = 2;
    image_xscale = -1; //invert direction
    if (image_index > 5) { //don't include idle sprite in loop
        image_index = 0;
    }
    if (place_meeting(x + walkingspeed, y, obj_solids)) { //solids collision
        x -= walkingspeed;
        //show_debug_message("right");
    }
} else { //no movement
    if (keyboard_check_released(ord("A")) || keyboard_check_released(ord("D"))) {
        sprite_index = spr_side;
        image_index = 6; //idle sprite, no animation
        image_speed = 0;
    }

}
#endregion

#region up and down walking
if (keyboard_check(ord("W"))) { //pressing up
	lastdir = up;
    y -= walkingspeed;
    sprite_index = spr_up;
    image_speed = 2;
    if (image_index > 5) { //don't include idle sprite in loop
        image_index = 0;
    }
    if (place_meeting(x, y - walkingspeed, obj_solids)) { //solids collision
        y += walkingspeed;
        //show_debug_message("up");
    }
} else if (keyboard_check(ord("S"))) { //pressing down
	lastdir = down;
    y += walkingspeed;
    sprite_index = spr_down;
    image_speed = 2;
    if (image_index > 5) { //don't include idle sprite in loop
        image_index = 0;
    }
    if (place_meeting(x, y + walkingspeed, obj_solids)) { //solids collision
        y -= walkingspeed;
        //show_debug_message("down");
    }
} else { //no movement
    if (keyboard_check_released(ord("W")) || keyboard_check_released(ord("S"))) {
        image_index = 6; //idle sprite, no animation
        image_speed = 0;
    }
}
#endregion