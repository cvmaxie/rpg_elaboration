/// @description Insert description here
// You can write your code in this editor
 if (obj_player.tutorial1 && room == house_interior) {
gpu_set_blendmode(bm_add);
 draw_self();
 x = obj_npc.x;
 y = obj_npc.y - obj_npc.sprite_yoffset - 5;
 gpu_set_blendmode(bm_normal);
 }
  else if (obj_player.tutorial2 && global.wood > 0 && room == seashore) {
gpu_set_blendmode(bm_add);
 draw_self();
 x = obj_crab.x;
 y = obj_crab.y - obj_crab.sprite_yoffset - 5;
 gpu_set_blendmode(bm_normal);
 }