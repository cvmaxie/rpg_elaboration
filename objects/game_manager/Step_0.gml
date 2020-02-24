/// @description room changer
if (room == start_screen) { //in start screen
    if (keyboard_check(vk_space)) { //check for spacebar pressed
        room_goto(seashore);
    }
} else if (room == seashore) { //in game screen
    if (global.key == true && place_meeting(x, y, obj_player)) { //if key boolean = true and player goes to obj
        audio_play_sound(win, 1, false); //play win sound
        //room_goto(start_screen); //player finishes the game and returns to start screen
    }
} else {}
