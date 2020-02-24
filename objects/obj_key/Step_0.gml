/// @description player collision event
if (place_meeting(x, y, obj_player) && global.state == 2) { //if player collides, pick up key
    global.key = true; //key boolean is true
    global.state = 3;
    alarm[0] = 1;
}