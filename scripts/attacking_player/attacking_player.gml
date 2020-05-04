//crab attacking player - paralyzes them, then steals wood
//wood stealing is performed in deposit script, which is executed in crabwalk script
if (obj_player.crabmeet) { //---ATTACKING _PLAYER
    if (atktime > 0) { //time crab is required to be in contact before player has been frozen
        atktime--;
        if (atktime == 0) { //if timer reaches 0
            obj_player.freeze = true; //crab has paralyzed the player
            deposited = false;
            global.wood--;
            depositspotx = room_width * .45;
            depositspoty = room_height * .55 + (global.wood * 10);
            show_debug_message("attack");
        }
    }
} else {
    atktime = 30;
}