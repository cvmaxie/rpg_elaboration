/// @description movement + wall collision
player_overlap_behavior(); //how/when player overlaps with other characters
spritechange();


if (room = house_interior) {
    if (!obj_npc.talking) { //only move when no dialogue is happening
        movement();
    } else {
        image_speed = 0;
    }
}



if (room == seashore && !freeze) { //in the seashore, player can attack if not paralyzed
    movement();
	attacking_crab();
}