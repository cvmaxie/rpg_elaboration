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

parts= part_system_create(); //sand spray when hit by player
sandcolor = make_color_rgb(222, 179, 135);
dksandcolor = make_color_rgb(167, 129, 82);
part_system_depth(parts, 14);
spray = part_type_create();
part_type_shape(spray, pt_shape_pixel);
part_type_size(spray, .5, 1.5, .01, .01);
part_type_speed(spray, 0, 0, 0, 0);
part_type_life(spray, 5, 20);
part_type_color2(spray, sandcolor, dksandcolor);
part_type_alpha2(spray, 1.0, .9);
part_type_gravity(spray, 0.01, 270);

emitter = part_emitter_create(parts);
