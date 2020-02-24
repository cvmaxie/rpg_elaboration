/// @description grass overlap behavior
overlap = false;
if (y > obj_player.y) { //overlap if player is behind (lower y pos)
	depth = 0;
	overlap = true;
	//show_debug_message("overlap")
} else {
	depth = 15;
	//show_debug_message("behind")
}
