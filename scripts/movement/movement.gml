//player walking behavior: occurs whenever player is not paralyzed or talking to npc
if (!freeze) { //if not paralyzed (by crab) --player is able to walk
    freezecount = 360; //timer for paralyzing duration is reset

    #region left and right walking
    if (keyboard_check(ord("A"))) { //pressing left
        lastdir = left; //last direction pressed was sideways
        x -= walkingspeed;
        sprite_index = sidesprite;
        image_speed = 2;
        image_xscale = 1;
        if (image_index > 5) { //don't include idle sprite in loop
            image_index = 0;
        }
        if (place_meeting(x - walkingspeed, y, obj_solids)) { //solids collision
            x += walkingspeed;
        }
    } else if (keyboard_check(ord("D"))) { //pressing right
        lastdir = right;
        x += walkingspeed;
        sprite_index = sidesprite;
        image_speed = 2;
        image_xscale = -1; //invert direction
        if (image_index > 5) { //don't include idle sprite in loop
            image_index = 0;
        }
        if (place_meeting(x + walkingspeed, y, obj_solids)) { //solids collision
            x -= walkingspeed;
        }
    } else if (keyboard_check_released(ord("A")) || keyboard_check_released(ord("D"))) {
        sprite_index = sidesprite;
        image_index = 6; //idle sprite, no animation
        image_speed = 0;
    } else if (keyboard_check(ord("W"))) { //pressing up
        lastdir = up;
        y -= walkingspeed;
        sprite_index = upsprite;
        image_speed = 2;
        if (image_index > 5) { //don't include idle sprite in loop
            image_index = 0;
        }
        if (place_meeting(x, y - walkingspeed, obj_solids)) { //solids collision
            y += walkingspeed;
        }
    } else if (keyboard_check(ord("S"))) { //pressing down
        lastdir = down;
        y += walkingspeed;
        sprite_index = downsprite;
        image_speed = 2;
        if (image_index > 5) { //don't include idle sprite in loop
            image_index = 0;
        }
        if (place_meeting(x, y + walkingspeed, obj_solids)) { //solids collision
            y -= walkingspeed;
        }
    } else { //no movement
        if (keyboard_check_released(ord("W")) || keyboard_check_released(ord("S"))) {
            image_index = 6; //idle sprite, no animation
            image_speed = 0;
        }
    }
    #endregion
}

if (alarm[0] <= 0) { //footstep sound timer
    if (keyboard_check(ord("W")) || (keyboard_check(ord("S"))) || (keyboard_check(ord("A"))) || (keyboard_check(ord("D")))) {
        alarm[0] = 25;
    }
}