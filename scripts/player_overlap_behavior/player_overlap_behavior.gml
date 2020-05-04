//controls how player sprite overlaps with character sprites
if (room = house_interior) { //interaction w/ npc behavior
        if (y > obj_npc.y) { //in front of npc
            depth = 15;
        }
    else { //behind npc
        depth = 60;
    }
} else if (room = seashore) { //move unconditionally in seashore, b/c no dialogue
if (global.state < 12) {
    if (collision_rectangle(x - sprite_xoffset, y - sprite_yoffset, x + sprite_xoffset, y + sprite_yoffset, obj_crab, false, false)) { //collision w crab
        if (y > obj_crab.bbox_top) { //whether to overlap crab
            depth = 11;
        } else {
            depth = 15;
        }
    } 
} else {
    if (collision_rectangle(x - sprite_xoffset, y - sprite_yoffset, x + sprite_xoffset, y + sprite_yoffset, obj_crab, false, false)) { //collision w crab
        if (y + sprite_yoffset > obj_crab.y) { //whether to overlap crab
            depth = 11;
        } else {
            depth = 15;
        }
    } 
}
}