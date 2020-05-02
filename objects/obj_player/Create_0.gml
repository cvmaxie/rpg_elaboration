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

upsprite = spr_up; //current up-walking sprite
sidesprite = spr_side; //current side-walking sprite
downsprite = spr_down; //current down-walking sprite
upattacksprite = spr_up_atk;
sideattacksprite = spr_side_atk;
downattacksprite = spr_down_atk;

lastdir = up; //last direction walked in

freeze = false; //whether "paralyzed" (caused by the crab)
crabmeet = false; //whether touching the crab

alarm[0] = 0; //for footstep sound