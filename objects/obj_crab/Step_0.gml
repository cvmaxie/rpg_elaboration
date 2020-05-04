/// @description 
if ((global.wood > 0 && global.wood < 6) || obj_player.freeze) {
    attacking_player() //crab will try to attack player
    //-----GETTING HIT BY PLAYER
    if (!hit) { //if crab wasn't just hit
        crabwalk(); //crab can walk
        lastx = x; //for directional position relative to player
        lasty = y;
		part_emitter_region(parts, emitter, -10, -10, -10, -10, ps_shape_ellipse, ps_distr_gaussian);
    } else { //crab has been hit
        crab_was_hit();
    }
} else if (global.state > 12) {
    crabfollow();
} else if (!obj_player.freeze) { //player hasn't collected enough wood, crab stays put
    sprite_index = spr_crab_down;
    image_speed = 0;
    image_index = 0;

}