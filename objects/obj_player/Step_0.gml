/// @description movement + wall collision
if (room = house_interior) {
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
		if (y > obj_crab.y - 5) { //in front of npc
            depth = 2;
        } else {
		depth = 5;
		}
    } else { //behind crab
		depth = 5;
    }
}

if (alarm[0] <= 0) {
    if (keyboard_check(ord("W")) || (keyboard_check(ord("S"))) || (keyboard_check(ord("A"))) || (keyboard_check(ord("D")))) {
        alarm[0] = 25;
    }
}

//show_debug_message("Dialogue state: " + string(global.state));
//show_debug_message("Wood collected: " + string(global.wood));