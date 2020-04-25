/// @description set up initial sprite states
depth = 5;
sprite_index = spr_up; //start out idle
image_speed = 0;
image_index = 6;

up = 0; //direction states (useful for attack animation)
down = 1;
side = 2;

lastdir = up; //last direction walked in

freeze = false;
crabmeet = false;

alarm[0] = 0;