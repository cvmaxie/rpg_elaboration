/// @description set up initial sprite states
depth = 5;
sprite_index = spr_up; //start out idle
image_speed = 0;
image_index = 6;
walkingspeed = .75; //universal speed

up = 0; //direction states (useful for attack animation)
down = 1;
left = 2;
right = 3;

lastdir = up; //last direction walked in

freeze = false;
crabmeet = false;
canhit = false;

alarm[0] = 0;