/// @description Insert description here
// You can write your code in this editor
if(other.supercharged){
	instance_destroy()
}
else if(!other.supercharged){
if(global.checkpointx != undefined){ oPlayer.x= global.checkpointx; oPlayer.y = global.checkpointy room_restart()}
else {room_restart()}
}