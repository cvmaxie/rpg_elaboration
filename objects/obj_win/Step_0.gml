/// @description set alarm upon player collision
if (room == seashore && place_meeting(x, y, obj_player)) {//if player collides, pick up driftwood
	alarm[0] = 1;
}