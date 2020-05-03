//bouncing the crab away from the player for a moment after it has been hit
var lerpamt = .4;
var lerpdist = 30;
if (place_meeting(x, y, obj_solids)) {
	lerpdist = 0;
	lerpamt = 0;
	hit = false
}
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