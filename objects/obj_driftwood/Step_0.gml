/// @description set player collision event alarm
if (room == seashore) {
    if (global.state == 8 && place_meeting(x, y, obj_player) && obtained == false) { //if player collides, pick up driftwood
        alarm[0] = 1;
    }
    if (y > obj_house.y) {
        if (y > obj_player.bbox_bottom && collision_rectangle(x - sprite_xoffset, y - sprite_yoffset, x + sprite_xoffset, y + sprite_yoffset, obj_player, false, false)) { //overlap if player is behind (lower y pos)
            depth = 10;
        } else {
            depth = 21;
        }
    } else {
        if (y > obj_player.bbox_bottom) { //overlap if player is behind (lower y pos)
            depth = 66;
        } else {
            depth = 76;
        }
    }
}