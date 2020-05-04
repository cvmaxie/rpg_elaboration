/// @description overlapping player behavior
if (y > obj_player.y) { //overlap if player is behind (lower y pos)
    obj_player.depth = 70;
	if (y > obj_crab.y) {
	obj_crab.depth = 70;
	}
    //show_debug_message("overlap")
} else if (place_empty(obj_player.x, obj_player.y - obj_player.sprite_yoffset, obj_crab)) {
    obj_player.depth = 11
}