if (room = house_interior) { //interaction w/ npc behavior

    if (place_meeting(x, y - sprite_yoffset, obj_npc)) { //collision w npc
        if (y > obj_npc.y) { //in front of npc
            depth = 2;
        }
    } else { //behind npc
        depth = 5;
    }
} else if (room = seashore) { //move unconditionally in seashore, b/c no dialogue
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