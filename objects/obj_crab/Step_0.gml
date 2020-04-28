/// @description 
if (obj_player.crabmeet) { //---ATTACKING _PLAYER
    if (atktime > 0) { //time crab is required to be in contact before player has been frozen
        atktime--;
        if (atktime == 0) { //if timer reaches 0
            obj_player.freeze = true; //crab has paralyzed the player
            show_debug_message("attack");
        }
    }
} else {
    atktime = 30;
}

//---FOLLOWING PLAYER BOOLEANS (used in crabwalk script)
if (x < obj_player.x + walkingspeed && x > obj_player.x - walkingspeed) {
closex = true;
} else { closex = false}

if (y < obj_player.y + walkingspeed && y > obj_player.y - walkingspeed) {
closey = true;
} else { closey = false}

//-----GETTING HIT BY PLAYER
if (!hit) { //if crab wasn't just hit
    crabwalk();
lastx = x;
lasty = y;
} else { //crab has been hit

	var lerpamt = .4;
	var lerpdist = 30;
    if (lastdir == up) {
	 y = lerp(y, lasty + lerpdist, lerpamt)
	 if (place_meeting(x, y + lerpamt, obj_solids)) {
	 hit = false;
	 } else if (y >= lasty + lerpdist - lerpamt) {
	 hit = false;
	 }
	} else if (lastdir == down) {
		 y = lerp(y, lasty - lerpdist, lerpamt)
	 	 if (place_meeting(x, y - lerpamt, obj_solids)) {
	 hit = false;
	 } else if (y <= lasty - lerpdist + lerpamt) {
	 hit = false;
	 }
	} else if (lastdir == left) {
		 x = lerp(x, lastx + lerpdist, lerpamt)
	 	 if (place_meeting(x + lerpamt, y, obj_solids)) {
	 hit = false;
	 } else if (x >= lastx + lerpdist - lerpamt) {
	 hit = false;
	 }
	} else if (lastdir == right) {
			 x = lerp(x, lastx - lerpdist, lerpamt)
	 	 if (place_meeting(x - lerpamt, y, obj_solids)) {
	 hit = false;
	 } else if (x <= lastx - lerpdist + lerpamt) {
	 hit = false;
	 }
	}
}