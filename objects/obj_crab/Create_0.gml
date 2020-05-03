/// @description Insert description here
// You can write your code in this editor
depth = 13;
atktime = 30;
walkingspeed = .78;
resetx = room_width * .8; //coordinates where crab goes to wait if player is frozen
resety = obj_house.bbox_bottom + sprite_height;
walktimer = 0; //dictates when crab changes walking direction
hit = false;
up = 0; //directions (useful for walking behavior + sprites)
down = 1;
left = 2;
right = 3;
lastdir = left;

lastx = x; //last y (before getting hit)
lasty = y;
closex = false; //whether coordinates match player coordinates (prevents vibrating)
closey = false

deposited = false; //whether stolen wood has been deposited
