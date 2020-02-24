/// @description player collision w/door
if (place_meeting(x, y, obj_player)) { //when player collides w/door
    if (room == seashore) { //in seashore, go to house
        room_goto(house_interior)
    } else if (room == house_interior) { //in house, go to seashore
        room_goto(seashore)
    }
    alarm[0] = 1;
}

if (room == seashore) { //map position in seashore
    x = 235;
    y = 77;
} else if (room == house_interior) { //map position in house
    x = 141;
    y = 185;
}