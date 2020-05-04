 //crab deposits stolen wood while player is paralyzed
 if (!deposited) { //time to deposit "stolen" wood

     //move crab to deposit stolen wood
     if (x < depositspotx - walkingspeed) { //RIGHT
         x += walkingspeed
         sprite_index = spr_crab_side;
         image_speed = 1;
         image_xscale = 1;
     } else if (x > depositspotx + walkingspeed) { //LEFT
         x -= walkingspeed;
         sprite_index = spr_crab_side;
         image_speed = 1;
         image_xscale = -1;
     } else if (y > depositspoty + walkingspeed) { //UP
         y -= walkingspeed;
         sprite_index = spr_crab_up;
         image_speed = 1;
         image_xscale = 1;
     } else if (y < depositspoty - walkingspeed) { //DOWN
         y += walkingspeed;
         sprite_index = spr_crab_down;
         image_speed = 1;
         image_xscale = 1;
     } else { //time to deposit wood
         instance_create_layer(depositspotx, depositspoty, "Instances", obj_driftwood);
         deposited = true;
     }
 } else {
     //move crab to reset coordinates (where it rests while player is frozen)
     if (x < resetx - walkingspeed) { //RIGHT
         x += walkingspeed
         sprite_index = spr_crab_side;
         image_speed = 1;
         image_xscale = 1;
     } else if (x > resetx + walkingspeed) { //LEFT
         x -= walkingspeed;
         sprite_index = spr_crab_side;
         image_speed = 1;
         image_xscale = -1;
     } else if (y > resety + walkingspeed) { //UP
         y -= walkingspeed;
         sprite_index = spr_crab_up;
         image_speed = 1;
         image_xscale = 1;
     } else if (y < resety - walkingspeed) { //DOWN
         y += walkingspeed;
         sprite_index = spr_crab_down;
         image_speed = 1;
         image_xscale = 1;
     } else {
         sprite_index = spr_crab_down
         image_speed = 0;
         image_index = 0;
     } //resting position after player is frozen
 }