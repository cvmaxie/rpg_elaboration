/// @description dialogue strings
talking = false; //so that txt only displays in certain conditions
input_check = false; //don't check for spacebar press
depth = 4;

//dialogue states:
dialogue[0] = "Looks like a hurricane is coming.";
dialogue[1] = "..."
dialogue[2] = "Oh- it seems like I've lost my watch. Can you help me find it? It's probably buried in the sand somewhere."
dialogue[3] = "Thanks!";
dialogue[4] = "I guess I just lost track of the time... ha!";
dialogue[5] = "...";
dialogue[6] = "Oh, you want to leave ahead of the storm. I see you're afraid of the water..."
dialogue[7] = "...Like every normal cat should be.";
dialogue[8] = "I can help you get out of here. Just bring me 5 pieces of driftwood, and I'll see what I can do about that bridge.";
dialogue[9] = "Perfect! Give me a moment...";
dialogue[10] = "...";
dialogue[11] = "...";
dialogue[12] = "It's done.";
dialogue[13] = "...";
dialogue[14] = "Oh, don't worry about me. I'll be okay. This isn't the first time I've waited out a storm."

global.state_1 = 0; //asking the player to find watch
global.state_2 = 1; //player found watch, asking player to collect wood
global.state_3 = 2; //player got wood
global.state_4 = 3; //building bridge
global.state_5 = 4; //player can leave


charcount = 0;
add = false;
