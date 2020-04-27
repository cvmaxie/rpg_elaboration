/// @description 
if (obj_player.crabmeet) {
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

if (!hit) { //if crab wasn't just hit
    crabwalk();
} else { //crab has been hit
	var lastx = x;
	var lasty = y;
	var lerpamt = .2;
	var lerpdist = 30;
    if (lastdir == up) {
	 y = lerp(y, lasty + lerpdist, lerpamt)
	 if (y >= lasty + lerpdist - lerpamt) {
	 hit = false;
	 }
	} else if (lastdir == down) {
		 y = lerp(y, lasty - lerpdist, lerpamt)
	 if (y <= lasty - lerpdist + lerpamt) {
	 hit = false;
	 }
	} else if (lastdir == left) {
		 x = lerp(x, lastx + lerpdist, lerpamt)
	 if (x >= lastx + lerpdist - lerpamt) {
	 hit = false;
	 }
	} else if (lastdir == right) {
			 x = lerp(x, lastx - lerpdist, lerpamt)
	 if (x <= lastx - lerpdist + lerpamt) {
	 hit = false;
	 }
	}
}