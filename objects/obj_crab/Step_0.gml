/// @description 
if (obj_player.crabmeet) {
	if (atktime > 0) {
		atktime--;
		if (atktime == 0) {
		obj_player.freeze = true;
		show_debug_message("attack");
		}
	}
} else {
atktime = 60;
}

if (!obj_player.crabmeet) {
x = lerp(x, obj_player.x, .02);
y = lerp(y, obj_player.y, .02);

}
