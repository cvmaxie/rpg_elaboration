/// @description grass overlap behavior
if (y > obj_house.y) {
    if (y > obj_player.y) { //overlap if player is behind (lower y pos)
        depth = 10;
    } else if (y + 7 > obj_crab.y && collision_rectangle(x - sprite_xoffset, y + 7 - sprite_yoffset, x + sprite_xoffset, y + 7 + sprite_yoffset, obj_crab, false, false)) {
	depth = 12
	} else {depth = 20;
    }
} else {
    if (y > obj_player.y) { //overlap if player is behind (lower y pos)
        depth = 65;
    } else {
        depth = 75;
    }
}