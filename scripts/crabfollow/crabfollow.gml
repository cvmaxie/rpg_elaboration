//crab follows player at the end
var followspeed = .65;
walktimer++; //add to walk timer (dictates changes in walking lastdirection)
if (walktimer < 50 && !closex) { //-----LEFT + RIGHT MOVEMENT
    if (x > obj_player.bbox_right) { //to the right of the player
        x -= followspeed;
        lastdir = left;
        sprite_index = spr_crab_side;
        image_speed = 1;
        image_xscale = -1;
        if (place_meeting(x - followspeed, y, obj_player)) {
            x += followspeed;
			image_speed = 0;
			depth = 4;
        }
    } else if (x < obj_player.bbox_right) { //to the left of the player
        x += followspeed;
        lastdir = right;
        sprite_index = spr_crab_side;
        image_speed = 1;
        image_xscale = 1;
        if (place_meeting(x + followspeed, y, obj_player)) {
            x -= followspeed;
			image_speed = 0;
			depth = 4;
        }
    }
} else if (walktimer < 100 && !closey) { //UP + DOWN MOVEMENT
    if (y > obj_player.y) { //below the player
        y -= followspeed;
        lastdir = up;
        sprite_index = spr_crab_up;
        image_speed = 1;
        image_xscale = 1;
        if (place_meeting(x, y - followspeed, obj_player)) {
            y += followspeed;
			image_speed = 0;
        }
    } else if (y < obj_player.y) { //above the player
        y += followspeed;
        lastdir = down;
        sprite_index = spr_crab_down;
        image_speed = 1;
        image_xscale = 1;
        if (place_meeting(x, y + followspeed, obj_player)) {
            y -= followspeed;
			image_speed = 0;
        }
    }
} else { //reset walk timer
    walktimer = 0;
}

//---FOLLOWING PLAYER BOOLEANS - prevents vibrating
if (x < obj_player.bbox_right + walkingspeed && x > obj_player.bbox_right - walkingspeed) { //within x threshold
    closex = true;
} else {
    closex = false
}
if (y < obj_player.y + walkingspeed && y > obj_player.y - walkingspeed) { //within y threshold
    closey = true;
} else {
    closey = false
}