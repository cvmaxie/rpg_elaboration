/// @description Insert description here
// You can write your code in this editor
 if (global.tutorial1 && room == house_interior) {
gpu_set_blendmode(bm_add);
 draw_self();
 x = obj_npc.x;
 y = obj_npc.y - obj_npc.sprite_yoffset - 5;
 gpu_set_blendmode(bm_normal);
 }
  else if (global.tutorial2 && global.wood > 0 && global.state == 8 && room == seashore) {
gpu_set_blendmode(bm_add);
 draw_self();
 x = obj_crab.x;
 y = obj_crab.y - obj_crab.sprite_yoffset - 5;
 gpu_set_blendmode(bm_normal);
 }