/// @description overlapping player behavior
overlap = false;
if (y > obj_player.y) { //overlap if player is behind (lower y pos)
	depth = 2;
	obj_trees.depth = 3;
	overlap = true;
	//show_debug_message("overlap")
} else {
	depth = 15;
	obj_trees.depth = 20;
	//show_debug_message("behind")
}
