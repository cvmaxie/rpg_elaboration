

if (obj_player.y > obj_house.bbox_bottom + walkingspeed && !obj_player.freeze) { //if the player is in front of the house and not frozen
    walktimer++; //add to walk timer (dictates changes in walking lastdirection)
    if (walktimer < 50 && !closex) {
        if (x > obj_player.x) { //to the right of the player
            x -= walkingspeed;
			lastdir = left;
			sprite_index = spr_crab_side;
			image_speed = 1;
            if (place_meeting(x - walkingspeed, y, obj_player)) {
                obj_player.crabmeet = true;
                x += walkingspeed;
            } else {
                obj_player.crabmeet = false;
            }
        } else if (x < obj_player.x) { //to the left of the player
            x += walkingspeed;
			lastdir = right;
            if (place_meeting(x + walkingspeed, y, obj_player)) {
                obj_player.crabmeet = true;
                x -= walkingspeed;
            } else {
                obj_player.crabmeet = false;
            }
        }
    } else if (walktimer < 100 && !closey) {
        if (y > obj_player.y) { //below the player
            y -= walkingspeed;
			lastdir = up;
            if (place_meeting(x, y - walkingspeed, obj_player)) {
                obj_player.crabmeet = true;
                y += walkingspeed;
            } else {
                obj_player.crabmeet = false;
            }
        } else if (y < obj_player.y) { //above the player
            y += walkingspeed;
			lastdir = down;
            if (place_meeting(x, y + walkingspeed, obj_player)) {
                obj_player.crabmeet = true;
                y -= walkingspeed;
            } else {
                obj_player.crabmeet = false;
            }
        }
    } else { //reset walk timer
        walktimer = 0;
    }
} else if (obj_player.freeze) { //if player is paralyzed
    if (x < resetx - walkingspeed) { //move crab to reset coordinates (where it rests while player is frozen)
        x += walkingspeed
    } else if (x > resetx + walkingspeed) {
        x -= walkingspeed;
    } else if (y > resety + walkingspeed) {
        y -= walkingspeed;
    } else if (y < resety - walkingspeed) {
        y += walkingspeed;
    } else {sprite_index = spr_crab_down
		image_speed = 0;}
}