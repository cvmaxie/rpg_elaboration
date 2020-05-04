/// @description checks when to display dialogue
//string + typewriter check
wholestring = dialogue[global.state]; //entire string (for typewriter)
strlength = string_length(wholestring); //length of entire string

if (charcount < strlength && add && talking) { //typwriter enabled
    add = false //stop creating alarms until the end of this alarm:
    alarm[1] = 2;
}
newstring = string_copy(wholestring, 1, charcount); //string with typewriter applied
//show_debug_message(charcount);


if (keyboard_check_pressed(vk_space) && obj_player.y > y && place_meeting(x, bbox_bottom + obj_player.walkingspeed, obj_player) || place_meeting(x, y - obj_player.walkingspeed, obj_player)) { //if space is pressed, display dialogue		 
    alarm[0] = 1; //play noise after alarm
    talking = true;
    add = true; //enable typewriter
	obj_player.tutorial1 = false;
}

if (input_check && keyboard_check_pressed(vk_space)) { //when player presses space while talking
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
    }
}
if (!talking) { //if not talking to npc, don't allow input
    input_check = false
}
if (global.wood == 5) { //gathering all the wood changes game state/dialogue
    global.state = 9;
}