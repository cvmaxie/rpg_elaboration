var box = sprite_get_height(spr_txt); //textbox sprite height
var camerax = camera_get_view_x(view_camera[0]); //camera coordinates
var cameray = camera_get_view_y(view_camera[0]);

//execute txt script at location
txt(camerax + obj_camera.cwidth/2, cameray + obj_camera.cheight - box/2 , obj_npc.newstring);