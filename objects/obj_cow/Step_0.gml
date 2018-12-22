/// @description Insert description here
// You can write your code in this editor

if((x < 0 or x > room_width)){
	instance_destroy();
}
if((y < 0 or y > room_height)){
	instance_destroy();
}

if(hlth <= 0){
	self.killed = true;
}
scr_animalsIdle();