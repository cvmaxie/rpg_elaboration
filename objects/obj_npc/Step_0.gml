 /// @description checks when to display dialogue
 #region string + typewriter check
 wholestring = dialogue[global.state]; //entire string (for typewriter)
 strlength = string_length(wholestring); //length of entire string

 if (charcount < strlength && add == true && talking == true) { //typwriter enabled
     add = false //stop creating alarms until the end of this alarm:
     alarm[1] = 2;
 }
 newstring = string_copy(wholestring, 1, charcount); //string with typewriter applied
 //show_debug_message(charcount);
 #endregion

 #region dialogue checker
 if (place_meeting(x, bbox_bottom + obj_player.walkingspeed, obj_player) || place_meeting(x, y - obj_player.walkingspeed, obj_player)) { //if player is close enough to talk
     if (keyboard_check_pressed(vk_space)) { //if space is pressed, display dialogue
         alarm[0] = 1; //play noise after alarm
         talking = true; //dialogue can be displayed
         add = true; //enable typewriter
     }
 } else {
     talking = false;
 }
 #endregion

 #region dialogue user input
 if (input_check = true && keyboard_check_pressed(vk_space)) { //when player presses space while talking
     if (global.state >= 0 && global.state < 2) { //before the player gets the watch
         global.state++;
         charcount = 0;
     } else if (global.state >= 3 && global.state < 8) { //after the player gets the watch
         global.state++;
         charcount = 0;
     } else if (global.state >= 9 && global.state < 14) {
         global.wood = 6;
         global.state++;
         charcount = 0;
     } else {
         talking = false; //dialogue can't be displayed
         input_check = false;
         charcount = 0;
     }
 }
 #endregion

 if (global.wood == 5) { //gathering all the wood changes game state/dialogue
     global.state = 9;
 }