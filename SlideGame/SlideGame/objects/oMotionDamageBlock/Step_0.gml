/// @description Insert description here
// You can write your code in this editor

if(oPlayer.moving = false){
	
	if(flip)&&(image_index = 1){
		image_index = 0	
	}
	else if(flip)&&(image_index = 0){
		image_index = 1		
	}
	if(image_index = 1){
		if(collision_circle(x,y,35,oPlayer,1,0)){
				if(global.checkpointx != undefined){ oPlayer.x= global.checkpointx; oPlayer.y = global.checkpointy room_restart()} 
				else {room_restart()}
		}
	}
	
	flip = false
}
 if(oPlayer.moving = true){
	flip = true
}