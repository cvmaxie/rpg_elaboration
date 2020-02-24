/// @description destroy bridge solid if goal is met
if (global.state >= 11) { //destroy collision block between bridge
	instance_destroy(inst_bridge);
}