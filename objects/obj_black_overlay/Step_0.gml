/// @description alpha of "overlay" changes with game state
layer_background_alpha(bgid, alpha);

if (global.state == 10) {//in state 10, fade in to black
    alpha = lerp(alpha, 1, .1);
} else if (global.state == 11) { //in state 11, fade out of black
    alpha = lerp(alpha, 0, .1);
} else {
    alpha = 0; //no fade thingie
}