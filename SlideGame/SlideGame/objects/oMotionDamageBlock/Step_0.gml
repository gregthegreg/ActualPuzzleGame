/// @description Insert description here
// You can write your code in this editor
if(oPlayer.moving = false){
	flip = true
	
}

if(flip)&&(image_index = 0)&&(flipped = false){
	image_index = 1	
	flipped = true
	
}
else if(flip)&&(image_index = 1)&&(flipped = false){
	image_index = 0
	flipped = true
	
}
if(image_index = 1){
	if(collision_circle(x,y,35,oPlayer,1,0)){
			room_restart()
	}
}
 if(oPlayer.moving = true){
	flip = false
	flipped = false
}