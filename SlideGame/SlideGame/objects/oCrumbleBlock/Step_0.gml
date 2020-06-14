/// @description Insert description here
// You can write your code in this editor
if(collision_circle(x,y,33,oPlayer,1,1))&&(!oPlayer.moving)&&(!touched){
		touched = true
		if(image_index  = 2){
	instance_destroy()
	}
	image_index ++
	
}
if(touched)&&(!collision_circle(x,y,33,oPlayer,1,1)){
	
	touched = false
	
}