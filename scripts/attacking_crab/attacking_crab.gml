//controls when player is able to hit the crab
if (keyboard_check(vk_space)) { //press space to attack
        obj_crab.hit = false;
        if (lastdir == up) { //attacking upwards
            sprite_index = upattacksprite;
            image_index = 0;
            if (crabmeet && obj_crab.lastdir == down) { //if in contact with crab from below
                obj_crab.hit = true; //crab has been hit
            }
        }
        if (lastdir == down) { //attacking downwards
            sprite_index = downattacksprite;
            image_index = 0;
            if (crabmeet && obj_crab.lastdir == up) { //if in contact with crab from above
                obj_crab.hit = true; //crab has been hit
            }
        }
        if (lastdir == left || lastdir == right) { //attacking to the side
            sprite_index = sideattacksprite;
            image_index = 0;
            if (lastdir == left && crabmeet && obj_crab.lastdir == right) { //if in contact with crab
                obj_crab.hit = true; //crab has been hit
            }
            if (lastdir == right && crabmeet && obj_crab.lastdir == left) { //if in contact with crab
                obj_crab.hit = true; //crab has been hit
            }
        }
    }
    if (keyboard_check_released(vk_space)) { //return to normal sprite
        obj_crab.hit = false;
        if (lastdir == up) { //after hitting up
            sprite_index = upsprite;
            image_index = 6;
        }
        if (lastdir == down) { //after hitting down
            sprite_index = downsprite;
            image_index = 6;
        }
        if (lastdir == left || lastdir == right) { //after hitting sideways
            sprite_index = sidesprite;
            image_index = 6;
        }
    }
