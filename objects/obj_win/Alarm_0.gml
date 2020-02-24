/// @description go to start sgreen, reset everything
audio_play_sound(key, 1, false);//play sound
room_goto(start_screen);
global.state = 0;
global.wood = 0;
global.key = false;
obj_driftwood.obtained = false;