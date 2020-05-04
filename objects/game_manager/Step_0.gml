/// @description room changer
if (keyboard_check_pressed(ord("R"))) {
    room_restart();
}
if (room == start_screen) { //in start screen
    if (keyboard_check(vk_space)) { //check for spacebar pressed
        room_goto(seashore);
    }
} else if (room == seashore) { //in game screen
    if (global.key == true && place_meeting(x, y, obj_player)) { //if key boolean = true and player goes to obj
        audio_play_sound(win, 1, false); //play win sound
        //room_goto(start_screen); //player finishes the game and returns to start screen
    }
}

if (room == house_interior) {
    dusttimer++;
    if (dusttimer == 15 && room == house_interior) {
        dusttimer = 0;
        dustwindow = choose(1, 2);
        if (dustwindow == 1) {
            dustspot = random_range(8, 33);
            dustheight = random_range(.35, .55);
        } else {
            dustspot = random_range(43, 52);
            dustheight = random_range(.35, .4);
        }
        part_emitter_region(ambient, bunnyemitter, obj_npc.x + dustspot, obj_npc.x + dustspot, room_height * dustheight, room_height * dustheight, ps_shape_rectangle, ps_distr_gaussian);
        part_emitter_stream(ambient, bunnyemitter, bunny, 1);

    } else {
        part_emitter_region(ambient, bunnyemitter, 0, 0, room_height, room_height, ps_shape_ellipse, ps_distr_gaussian);
        part_emitter_stream(ambient, bunnyemitter, bunny, 1);
    }
} else {
    part_emitter_region(ambient, bunnyemitter, 0, 0, room_height, room_height, ps_shape_ellipse, ps_distr_gaussian);
    part_emitter_stream(ambient, bunnyemitter, bunny, 1);
}