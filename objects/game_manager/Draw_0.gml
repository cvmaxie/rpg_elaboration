/// @description start text
draw_set_font(font0);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
if (room == start_screen) { //draw this message in the start screen
    draw_text(room_width / 2, room_height / 2, "Narrative Game. Press Space to Start.");
}