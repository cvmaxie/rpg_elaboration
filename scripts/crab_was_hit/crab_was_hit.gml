//bouncing the crab away from the player for a moment after it has been hit
var lerpamt = .4;
var lerpdist = 30;
var smalldist = 4; //small emitter range for particle
var largedist = 6; //large emitter range for particle
if (place_meeting(x, y, obj_solids)) {
	lerpdist = 0;
	lerpamt = 0;
	hit = false
}
if (lastdir == up) {
	y = lerp(y, lasty + lerpdist, lerpamt)
	part_emitter_region(parts, emitter, x - smalldist, x + smalldist, y - sprite_yoffset - largedist, y - sprite_yoffset, ps_shape_ellipse, ps_distr_gaussian);
	if (place_meeting(x, y + lerpamt, obj_solids)) {
	hit = false;
	} else if (y >= lasty + lerpdist - lerpamt) {
	hit = false;
	}
} else if (lastdir == down) {
		y = lerp(y, lasty - lerpdist, lerpamt)
		part_emitter_region(parts, emitter, x - smalldist, x + smalldist, y + sprite_yoffset, y + sprite_yoffset + largedist, ps_shape_ellipse, ps_distr_gaussian);
	 	if (place_meeting(x, y - lerpamt, obj_solids)) {
	hit = false;
	} else if (y <= lasty - lerpdist + lerpamt) {
	hit = false;
	}
} else if (lastdir == left) {
		x = lerp(x, lastx + lerpdist, lerpamt)
		part_emitter_region(parts, emitter, x + sprite_xoffset, x + sprite_xoffset - largedist * 3, y - smalldist, y + smalldist, ps_shape_ellipse, ps_distr_gaussian);
	 	if (place_meeting(x + lerpamt, y, obj_solids)) {
	hit = false;
	} else if (x >= lastx + lerpdist - lerpamt) {
	hit = false;
	}
} else if (lastdir == right) { 
			x = lerp(x, lastx - lerpdist, lerpamt)
			part_emitter_region(parts, emitter, x + sprite_xoffset, x + sprite_xoffset + largedist * 3, y - smalldist, y + smalldist, ps_shape_ellipse, ps_distr_gaussian);
	 	if (place_meeting(x - lerpamt, y, obj_solids)) {
	hit = false;
	} else if (x <= lastx - lerpdist + lerpamt) {
	hit = false;
	}
}


part_emitter_stream(parts, emitter, spray, 2); //stream 5 particles every second