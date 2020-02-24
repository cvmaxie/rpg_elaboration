 /// @description apply dialogue script
 draw_self();
 show_debug_message("Dialogue state: " + string(global.state));

 if (talking = true) { //run dialoguebox script
     dialoguebox();
 }