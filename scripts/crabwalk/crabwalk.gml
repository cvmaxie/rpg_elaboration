//CRABWALK: controls how the crab follows player/walks. executed when player has a certain # of driftwood
if (obj_player.y > obj_house.bbox_bottom + walkingspeed && !obj_player.freeze) { //if the player is in front of the house and not frozen
    walktimer++; //add to walk timer (dictates changes in walking lastdirection)
    if (walktimer < 50 && !closex) { //-----LEFT + RIGHT MOVEMENT
        if (x > obj_player.x) { //to the right of the player
            x -= walkingspeed;
            lastdir = left;
            sprite_index = spr_crab_side;
            image_speed = 1;
            image_xscale = -1;
            if (place_meeting(x - walkingspeed, y, obj_player)) {
                obj_player.crabmeet = true;
                x += walkingspeed;
            } else {
                obj_player.crabmeet = false;
            }
        } else if (x < obj_player.x) { //to the left of the player
            x += walkingspeed;
            lastdir = right;
            sprite_index = spr_crab_side;
            image_speed = 1;
            image_xscale = 1;
            if (place_meeting(x + walkingspeed, y, obj_player)) {
                obj_player.crabmeet = true;
                x -= walkingspeed;
            } else {
                obj_player.crabmeet = false;
            }
        }
    } else if (walktimer < 100 && !closey) { //UP + DOWN MOVEMENT
        if (y > obj_player.y) { //below the player
            y -= walkingspeed;
            lastdir = up;
            sprite_index = spr_crab_up;
            image_speed = 1;
            image_xscale = 1;
            if (place_meeting(x, y - walkingspeed, obj_player)) {
                obj_player.crabmeet = true;
                y += walkingspeed;
            } else {
                obj_player.crabmeet = false;
            }
        } else if (y < obj_player.y) { //above the player
            y += walkingspeed;
            lastdir = down;
            sprite_index = spr_crab_down;
            image_speed = 1;
            image_xscale = 1;
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
	deposit();
} else {
    sprite_index = spr_crab_up;
    image_speed = 0;
    image_index = 0;
}

//---FOLLOWING PLAYER BOOLEANS - prevents vibrating
if (x < obj_player.x + walkingspeed && x > obj_player.x - walkingspeed) { //within x threshold
    closex = true;
} else {
    closex = false
}
if (y < obj_player.y + walkingspeed && y > obj_player.y - walkingspeed) { //within y threshold
    closey = true;
} else {
    closey = false
}