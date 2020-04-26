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
    atktime = 15;
}

if (obj_player.y > obj_house.bbox_bottom && !obj_player.freeze) { //if the player is in front of the house and not frozen
walktimer++;
if (walktimer < 50) {
if (x > obj_player.x) { //to the right of the player
        x -= walkingspeed;
        if (place_meeting(x - walkingspeed, y, obj_player)) {
            obj_player.crabmeet = true;
            x += walkingspeed;
        } else {
            obj_player.crabmeet = false;
        }
    } else if (x < obj_player.x) { //to the left of the player
        x += walkingspeed;
        if (place_meeting(x + walkingspeed, y, obj_player)) {
            obj_player.crabmeet = true;
            x -= walkingspeed;
        } else {
            obj_player.crabmeet = false;
        }
    }
} else if (walktimer < 100) {
    if (y > obj_player.y) { //below the player
        y -= walkingspeed;
        if (place_meeting(x, y - walkingspeed, obj_player)) {
            obj_player.crabmeet = true;
            y += walkingspeed;
        } else {
            obj_player.crabmeet = false;
        }
    } else if (y < obj_player.y) { //above the player
        y += walkingspeed;
        if (place_meeting(x, y + walkingspeed, obj_player)) {
            obj_player.crabmeet = true;
            y -= walkingspeed;
        } else {
            obj_player.crabmeet = false;
        }
    }
} else {
walktimer = 0;
}
} else if (obj_player.freeze) { //if player is frozen
    if (x < resetx - walkingspeed) { //move crab to reset coordinates
        x += walkingspeed
    } else if (x > resetx + walkingspeed) {
        x -= walkingspeed;
    } else if (y > resety + walkingspeed) {
        y -= walkingspeed;
    } else if (y < resety - walkingspeed) {
        y += walkingspeed;
    }
}