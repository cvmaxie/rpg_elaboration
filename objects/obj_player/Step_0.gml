/// @description movement + wall collision
if (room = house_interior) { //interaction w/ npc behavior
    if (obj_npc.talking = false) { //only move when no dialogue is happening
        movement();
    }
    if (place_meeting(x, y - sprite_yoffset, obj_npc)) { //collision w npc
        if (y > obj_npc.y) { //in front of npc
            depth = 2;
        }
    } else { //behind npc
        depth = 5;
    }
} else if (room = seashore) { //move unconditionally in seashore, b/c no dialogue
    movement();
    if (place_meeting(x, y - sprite_yoffset, obj_crab)) { //collision w crab
        if (y > obj_crab.y - 5) { //whether to overlap crab
            depth = 2;
        } else {
            depth = 5;
        }
    } else { //behind crab
        depth = 5;
    }
}

if (alarm[0] <= 0) { //footstep sound timer
    if (keyboard_check(ord("W")) || (keyboard_check(ord("S"))) || (keyboard_check(ord("A"))) || (keyboard_check(ord("D")))) {
        alarm[0] = 25;
    }
}

if (room == seashore && !freeze) { //in the seashore, player can attack if not paralyzed
    if (keyboard_check(vk_space)) { //press space to attack
        obj_crab.hit = false;
        if (lastdir == up) { //attacking upwards
            sprite_index = spr_up_atk;
            image_index = 0;
            if (crabmeet && obj_crab.lastdir == down) { //if in contact with crab from below
                obj_crab.hit = true; //crab has been hit
            }
        }
        if (lastdir == down) { //attacking downwards
            sprite_index = spr_down_atk;
            image_index = 0;
            if (crabmeet && obj_crab.lastdir == up) { //if in contact with crab from above
                obj_crab.hit = true; //crab has been hit
            }
        }
        if (lastdir == left || lastdir == right) { //attacking to the side
            sprite_index = spr_side_atk;
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
}