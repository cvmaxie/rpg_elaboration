/// @description Insert description here
// You can write your code in this editor
global.wood = 0;
global.state = 0;

ambient = part_system_create(); //ink dust for player death

sparkle = make_color_rgb(236, 151, 139);

bunny = part_type_create();
part_type_shape(bunny, pt_shape_pixel);
part_type_sprite(bunny, spr_sparkle, false, false, true);
part_type_size(bunny, .5, 1.5, -.005, .02);
part_type_speed(bunny, 0, 0, 0, 0);
part_type_life(bunny, 20, 400);
part_type_color1(bunny, sparkle);
part_type_alpha3(bunny, .35, .45, 0);
part_type_blend(bunny, true);
part_type_gravity(bunny, 0.001, 270);

bunnyemitter = part_emitter_create(ambient);

dusttimer = 0; //dust timer