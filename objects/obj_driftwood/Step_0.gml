/// @description set player collision event alarm
if (room == seashore && global.state == 8 && place_meeting(x, y, obj_player) && obtained == false) {//if player collides, pick up driftwood
	alarm[0] = 1;
}