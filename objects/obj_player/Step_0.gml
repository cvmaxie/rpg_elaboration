/// @description movement + wall collision
player_overlap_behavior(); //how/when player overlaps with other characters
spritechange(); //sprite behavior (depends on how much wood is in basket)

if (room = house_interior) {
    if (!obj_npc.talking) { //only move when no dialogue is happening
        movement();
    } else {
        image_speed = 0;
		sprite_index = upsprite;
    }
}



if (room == seashore && !freeze) { //in the seashore, player can attack if not paralyzed
    movement();
	if (global.wood > 0 && global.wood < 6) { //crab starts to chase player, so they can attack
		attacking_crab();
	}
} else if (room == seashore) { //when paralyzed
    sprite_index = freezesprite; //paralysis countdown
    freezecount--;
    if (freezecount == 0) { //at the end of paralysis
        sprite_index = downsprite;
        freeze = false;
		obj_crab.deposited = false;
    }
}

