/// @description camera following behaviors
//camera following object (engine's camera follows this object, this object follows player)
cheight = camera_get_view_height(view_camera[0]); //get camera width and height
cwidth = camera_get_view_width(view_camera[0]);
//set camera position to this object's position
camera_set_view_pos(view_camera[0], x - cwidth / 2, y - cheight / 2);

if (obj_player.x < cwidth / 2) {
    x = lerp(x, cwidth / 2, .2)
} else if (obj_player.x > room_width - cwidth / 2) {
    x = lerp(x, room_width - cwidth / 2, .2)
} else {
    x = lerp(x, obj_player.x, .2); //lerp between current pos and player pos (for smooth movement)
}

if (obj_player.y < cheight / 2) { 
    y = lerp(y, cheight / 2, .2)
} else if (obj_player.y > room_height - cheight / 2) {
    y = lerp(y, room_height - cheight / 2, .2)
} else {
    y = lerp(y, obj_player.y, .2)
}