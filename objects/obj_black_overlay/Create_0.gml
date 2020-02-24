/// @description setting alpha lerp variables
black = layer_get_id("overlay");
bgid = layer_background_get_id(black);
alpha = 0;
depth = 0;
//this object fades in to black while the npc is "building" the bridge. 
//triggered by space/dialogue change state