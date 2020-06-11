/// @description Insert description here
// You can write your code in this editor
timer --
if(timer < 0)&&(image_index = 0){
	image_index = 1	
	timer = timermax
}
else if(timer < 0)&&(image_index = 1){
	image_index = 0
	timer = timermax
}
if(image_index = 1){
	if(collision_circle(x,y,35,oPlayer,1,0)){
			if(oPlayer.moving = false){room_restart()
			}
	}
}