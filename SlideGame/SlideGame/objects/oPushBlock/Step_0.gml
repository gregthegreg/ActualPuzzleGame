/// @description Insert description here
// You can write your code in this editor
objectcollisionNotPlayer()
if(place_meeting(x+33,y,oPlayer)){
	if(other.moving = false)&&(oPlayer.direction = 180){
			hsp -= 50
	}
}
 if(place_meeting(x-33,y,oPlayer)){
	if(other.moving = false)&&(oPlayer.direction = 0){
			hsp += 50
	}
}
 if(place_meeting(x,y+33,oPlayer)){
	if(other.moving = false)&&(oPlayer.direction = 90){
			vsp -= 50
	}
}
if(place_meeting(x,y-33,oPlayer)){
	if(other.moving = false)&&(oPlayer.direction = 270) {
			vsp += 50
	}
}