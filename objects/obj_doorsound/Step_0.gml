/// @description player collision w/door
if (place_meeting(x, y, obj_player) && doorway = true) { //when player collides w/door
	doorway = false;
	alarm[0] = 40;
}